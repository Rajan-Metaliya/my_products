--
-- Class Product as table product
--

CREATE TABLE "product" (
  "id" serial,
  "name" text NOT NULL,
  "image" text NOT NULL,
  "price" double precision NOT NULL,
  "createdOn" timestamp without time zone NOT NULL,
  "isLiked" boolean NOT NULL,
  "noOfItems" integer NOT NULL
);

ALTER TABLE ONLY "product"
  ADD CONSTRAINT product_pkey PRIMARY KEY (id);


