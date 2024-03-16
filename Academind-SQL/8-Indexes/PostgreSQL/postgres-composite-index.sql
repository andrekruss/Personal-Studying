-- creating a multicolumn index
CREATE INDEX multiaddr
ON addresses (street, city);