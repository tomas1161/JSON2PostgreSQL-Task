import json
import psycopg2

def extract_interface_data(config_file):

    with open(config_file, 'r') as f:
        config = json.load(f)

    interfaces = config["frinx-uniconfig-topology:configuration"]["Cisco-IOS-XE-native:native"]["interface"]

    data_to_insert = []
    for interface_group, intf_list in interfaces.items():
        if isinstance(intf_list, list):
            for intf in intf_list:
                name = f"{interface_group}{intf['name']}"
                description = intf.get("description")
                max_frame_size = intf.get("mtu")
                config_json = json.dumps(intf)

                port_channel_id = None
                channel_group = intf.get("Cisco-IOS-XE-ethernet:channel-group")
                if channel_group:
                    port_channel_id = channel_group["number"]

                data_to_insert.append((name, description, max_frame_size, config_json, port_channel_id))

    return data_to_insert

def insert_into_database(data, db_credentials):

    with psycopg2.connect(**db_credentials) as conn:
        with conn.cursor() as cur:
            cur.execute("DROP TABLE IF EXISTS interface")

            cur.execute("""
                CREATE TABLE interface (
                    id SERIAL PRIMARY KEY,
                    connection INTEGER,
                    name VARCHAR(255) NOT NULL,
                    description VARCHAR(255),
                    config JSON,
                    type VARCHAR(50),
                    infra_type VARCHAR(50),
                    port_channel_id INTEGER,
                    max_frame_size INTEGER
                )
            """)
            conn.commit()

            for row in data:
                cur.execute("""
                    INSERT INTO interface (name, description, max_frame_size, config, port_channel_id)
                    VALUES (%s, %s, %s, %s, %s)
                """, row)

if __name__ == "__main__":
    config_file = "configClear_v2.json"
    db_credentials = {
        'dbname': "postgres",
        'user': "postgres",
        'password': "root",
        'host': "localhost",
        'port': "5432"
    }

    interface_data = extract_interface_data(config_file)
    insert_into_database(interface_data, db_credentials)
