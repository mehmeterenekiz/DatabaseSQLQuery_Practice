create table customer (
    cid serial primary key,
    fname varchar(30),
    lname varchar(50),
    email varchar(50),
    phone varchar(20)
);

create table address (
    aid serial primary key,
    street varchar(30),
    city varchar(30),
    zipcode varchar(10),
    cid int,
    constraint fk_address_customer foreign key (cid) references customer(cid)
);

create table item (
    iid serial primary key,
    name varchar(100),
    description text,
    price decimal(10, 2)
);

create table "order" (
    oid serial primary key,
    cid int,
    aid int,
    odate date,
    constraint fk_order_customer foreign key (cid) references customer(cid),
    constraint fk_order_address foreign key (aid) references address(aid)
);

create table ordered_item (
    iid int,
    oid int,
    quantity int,
    primary key (iid, oid),
    constraint fk_ordered_item_item foreign key (iid) references item(iid),
    constraint fk_ordered_item_order foreign key (oid) references "order"(oid)
);
