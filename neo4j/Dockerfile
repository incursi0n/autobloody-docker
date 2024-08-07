# Use the official Neo4j image from Docker Hub as the base image
FROM neo4j:latest

# Set environment variables
# Set the default username and password for Neo4j
ENV NEO4J_AUTH=neo4j/adminadmin

# Optionally, set plugins if needed
ENV NEO4J_PLUGINS='["graph-data-science"]'

# Expose Neo4j ports
EXPOSE 7474 7687

# Bind Neo4j to all network interfaces
ENV NEO4J_dbms_default__listen__address=0.0.0.0
ENV NEO4J_dbms_default__advertised__address=localhost

# The default command provided by the Neo4j image will start Neo4j
# You don't need to specify CMD here unless you want to override the default behavior

