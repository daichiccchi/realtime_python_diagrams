from diagrams import Diagram
from diagrams.aws.compute import EC2
from diagrams.aws.network import ELB
from diagrams.aws.database import RDS

with Diagram("Simple Web Service", show=False, outformat="png", filename="output"):
    ELB("lb") >> EC2("web") >> RDS("db")