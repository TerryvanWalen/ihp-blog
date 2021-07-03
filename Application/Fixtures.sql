

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('41941efa-59e4-4185-a134-bae96fc69f3e', 'test2', '', '2021-07-02 22:35:43.381878+02');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('54decad7-4e49-498c-96a9-c2bb390e116b', 'test', '* test', '2021-07-02 22:35:33.172789+02');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('333d2f36-62e3-4b48-8f99-bb2c79243d8a', 'hihi', '* ab
* cd', '2021-07-02 22:53:52.994472+02');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('f412aa27-8a92-476f-9ddf-3a4298248acb', '333d2f36-62e3-4b48-8f99-bb2c79243d8a', 'me', 'hoi');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('3be84390-c4d2-404b-933f-5961a165369f', '333d2f36-62e3-4b48-8f99-bb2c79243d8a', 'me', 'heeeeeey');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


