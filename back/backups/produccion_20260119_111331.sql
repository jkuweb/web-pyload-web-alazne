--
-- PostgreSQL database dump
--

\restrict eIidnfjOGOYVgPlVdPtbbTbFHGpnjZqm4b1HxEh34Ub7kvoehAjRZ3RH7Lg4n2Y

-- Dumped from database version 17.6 (Debian 17.6-1.pgdg12+1)
-- Dumped by pg_dump version 17.6 (Debian 17.6-1.pgdg12+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.users_sessions DROP CONSTRAINT IF EXISTS users_sessions_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.users_roles DROP CONSTRAINT IF EXISTS users_roles_parent_fk;
ALTER TABLE IF EXISTS ONLY public.payload_preferences_rels DROP CONSTRAINT IF EXISTS payload_preferences_rels_users_fk;
ALTER TABLE IF EXISTS ONLY public.payload_preferences_rels DROP CONSTRAINT IF EXISTS payload_preferences_rels_parent_fk;
ALTER TABLE IF EXISTS ONLY public.payload_locked_documents_rels DROP CONSTRAINT IF EXISTS payload_locked_documents_rels_users_fk;
ALTER TABLE IF EXISTS ONLY public.payload_locked_documents_rels DROP CONSTRAINT IF EXISTS payload_locked_documents_rels_parent_fk;
ALTER TABLE IF EXISTS ONLY public.payload_locked_documents_rels DROP CONSTRAINT IF EXISTS payload_locked_documents_rels_pages_fk;
ALTER TABLE IF EXISTS ONLY public.payload_locked_documents_rels DROP CONSTRAINT IF EXISTS payload_locked_documents_rels_media_fk;
ALTER TABLE IF EXISTS ONLY public.pages_rels DROP CONSTRAINT IF EXISTS pages_rels_parent_fk;
ALTER TABLE IF EXISTS ONLY public.pages_rels DROP CONSTRAINT IF EXISTS pages_rels_pages_fk;
ALTER TABLE IF EXISTS ONLY public.pages_locales DROP CONSTRAINT IF EXISTS pages_locales_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_locales DROP CONSTRAINT IF EXISTS pages_locales_meta_image_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages DROP CONSTRAINT IF EXISTS pages_hero_media_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_hero_links DROP CONSTRAINT IF EXISTS pages_hero_links_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_hero_links_locales DROP CONSTRAINT IF EXISTS pages_hero_links_locales_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_services_services DROP CONSTRAINT IF EXISTS pages_blocks_services_services_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_services_services_locales DROP CONSTRAINT IF EXISTS pages_blocks_services_services_locales_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_services_services DROP CONSTRAINT IF EXISTS pages_blocks_services_services_image_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_services DROP CONSTRAINT IF EXISTS pages_blocks_services_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_sentence_sentences DROP CONSTRAINT IF EXISTS pages_blocks_sentence_sentences_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_sentence_sentences_locales DROP CONSTRAINT IF EXISTS pages_blocks_sentence_sentences_locales_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_sentence DROP CONSTRAINT IF EXISTS pages_blocks_sentence_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_price_block DROP CONSTRAINT IF EXISTS pages_blocks_price_block_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_opinion_block DROP CONSTRAINT IF EXISTS pages_blocks_opinion_block_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_opinion_block_opinions DROP CONSTRAINT IF EXISTS pages_blocks_opinion_block_opinions_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_opinion_block_opinions DROP CONSTRAINT IF EXISTS pages_blocks_opinion_block_opinions_media_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_opinion_block_opinions_locales DROP CONSTRAINT IF EXISTS pages_blocks_opinion_block_opinions_locales_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_opinion_block_locales DROP CONSTRAINT IF EXISTS pages_blocks_opinion_block_locales_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_media_block DROP CONSTRAINT IF EXISTS pages_blocks_media_block_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_media_block DROP CONSTRAINT IF EXISTS pages_blocks_media_block_media_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_content DROP CONSTRAINT IF EXISTS pages_blocks_content_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_content_locales DROP CONSTRAINT IF EXISTS pages_blocks_content_locales_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v DROP CONSTRAINT IF EXISTS _pages_v_version_hero_media_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_version_hero_links DROP CONSTRAINT IF EXISTS _pages_v_version_hero_links_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_version_hero_links_locales DROP CONSTRAINT IF EXISTS _pages_v_version_hero_links_locales_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_rels DROP CONSTRAINT IF EXISTS _pages_v_rels_parent_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_rels DROP CONSTRAINT IF EXISTS _pages_v_rels_pages_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v DROP CONSTRAINT IF EXISTS _pages_v_parent_id_pages_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_locales DROP CONSTRAINT IF EXISTS _pages_v_locales_version_meta_image_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_locales DROP CONSTRAINT IF EXISTS _pages_v_locales_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_services_services DROP CONSTRAINT IF EXISTS _pages_v_blocks_services_services_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_services_services_locales DROP CONSTRAINT IF EXISTS _pages_v_blocks_services_services_locales_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_services_services DROP CONSTRAINT IF EXISTS _pages_v_blocks_services_services_image_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_services DROP CONSTRAINT IF EXISTS _pages_v_blocks_services_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_sentence_sentences DROP CONSTRAINT IF EXISTS _pages_v_blocks_sentence_sentences_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_sentence_sentences_locales DROP CONSTRAINT IF EXISTS _pages_v_blocks_sentence_sentences_locales_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_sentence DROP CONSTRAINT IF EXISTS _pages_v_blocks_sentence_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_price_block DROP CONSTRAINT IF EXISTS _pages_v_blocks_price_block_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_opinion_block DROP CONSTRAINT IF EXISTS _pages_v_blocks_opinion_block_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_opinion_block_opinions DROP CONSTRAINT IF EXISTS _pages_v_blocks_opinion_block_opinions_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_opinion_block_opinions DROP CONSTRAINT IF EXISTS _pages_v_blocks_opinion_block_opinions_media_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_opinion_block_opinions_locales DROP CONSTRAINT IF EXISTS _pages_v_blocks_opinion_block_opinions_locales_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_opinion_block_locales DROP CONSTRAINT IF EXISTS _pages_v_blocks_opinion_block_locales_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_media_block DROP CONSTRAINT IF EXISTS _pages_v_blocks_media_block_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_media_block DROP CONSTRAINT IF EXISTS _pages_v_blocks_media_block_media_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_content DROP CONSTRAINT IF EXISTS _pages_v_blocks_content_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_content_locales DROP CONSTRAINT IF EXISTS _pages_v_blocks_content_locales_parent_id_fk;
DROP INDEX IF EXISTS public.users_updated_at_idx;
DROP INDEX IF EXISTS public.users_sessions_parent_id_idx;
DROP INDEX IF EXISTS public.users_sessions_order_idx;
DROP INDEX IF EXISTS public.users_roles_parent_idx;
DROP INDEX IF EXISTS public.users_roles_order_idx;
DROP INDEX IF EXISTS public.users_email_idx;
DROP INDEX IF EXISTS public.users_created_at_idx;
DROP INDEX IF EXISTS public.payload_preferences_updated_at_idx;
DROP INDEX IF EXISTS public.payload_preferences_rels_users_id_idx;
DROP INDEX IF EXISTS public.payload_preferences_rels_path_idx;
DROP INDEX IF EXISTS public.payload_preferences_rels_parent_idx;
DROP INDEX IF EXISTS public.payload_preferences_rels_order_idx;
DROP INDEX IF EXISTS public.payload_preferences_key_idx;
DROP INDEX IF EXISTS public.payload_preferences_created_at_idx;
DROP INDEX IF EXISTS public.payload_migrations_updated_at_idx;
DROP INDEX IF EXISTS public.payload_migrations_created_at_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_updated_at_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_rels_users_id_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_rels_path_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_rels_parent_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_rels_pages_id_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_rels_order_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_rels_media_id_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_global_slug_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_created_at_idx;
DROP INDEX IF EXISTS public.payload_kv_key_idx;
DROP INDEX IF EXISTS public.pages_updated_at_idx;
DROP INDEX IF EXISTS public.pages_slug_idx;
DROP INDEX IF EXISTS public.pages_rels_path_idx;
DROP INDEX IF EXISTS public.pages_rels_parent_idx;
DROP INDEX IF EXISTS public.pages_rels_pages_id_idx;
DROP INDEX IF EXISTS public.pages_rels_order_idx;
DROP INDEX IF EXISTS public.pages_meta_meta_image_idx;
DROP INDEX IF EXISTS public.pages_locales_locale_parent_id_unique;
DROP INDEX IF EXISTS public.pages_hero_links_parent_id_idx;
DROP INDEX IF EXISTS public.pages_hero_links_order_idx;
DROP INDEX IF EXISTS public.pages_hero_links_locales_locale_parent_id_unique;
DROP INDEX IF EXISTS public.pages_hero_hero_media_idx;
DROP INDEX IF EXISTS public.pages_created_at_idx;
DROP INDEX IF EXISTS public.pages_blocks_services_services_parent_id_idx;
DROP INDEX IF EXISTS public.pages_blocks_services_services_order_idx;
DROP INDEX IF EXISTS public.pages_blocks_services_services_locales_locale_parent_id_uniq;
DROP INDEX IF EXISTS public.pages_blocks_services_services_image_idx;
DROP INDEX IF EXISTS public.pages_blocks_services_path_idx;
DROP INDEX IF EXISTS public.pages_blocks_services_parent_id_idx;
DROP INDEX IF EXISTS public.pages_blocks_services_order_idx;
DROP INDEX IF EXISTS public.pages_blocks_sentence_sentences_parent_id_idx;
DROP INDEX IF EXISTS public.pages_blocks_sentence_sentences_order_idx;
DROP INDEX IF EXISTS public.pages_blocks_sentence_sentences_locales_locale_parent_id_uni;
DROP INDEX IF EXISTS public.pages_blocks_sentence_path_idx;
DROP INDEX IF EXISTS public.pages_blocks_sentence_parent_id_idx;
DROP INDEX IF EXISTS public.pages_blocks_sentence_order_idx;
DROP INDEX IF EXISTS public.pages_blocks_price_block_path_idx;
DROP INDEX IF EXISTS public.pages_blocks_price_block_parent_id_idx;
DROP INDEX IF EXISTS public.pages_blocks_price_block_order_idx;
DROP INDEX IF EXISTS public.pages_blocks_opinion_block_path_idx;
DROP INDEX IF EXISTS public.pages_blocks_opinion_block_parent_id_idx;
DROP INDEX IF EXISTS public.pages_blocks_opinion_block_order_idx;
DROP INDEX IF EXISTS public.pages_blocks_opinion_block_opinions_parent_id_idx;
DROP INDEX IF EXISTS public.pages_blocks_opinion_block_opinions_order_idx;
DROP INDEX IF EXISTS public.pages_blocks_opinion_block_opinions_media_idx;
DROP INDEX IF EXISTS public.pages_blocks_opinion_block_opinions_locales_locale_parent_id;
DROP INDEX IF EXISTS public.pages_blocks_opinion_block_locales_locale_parent_id_unique;
DROP INDEX IF EXISTS public.pages_blocks_media_block_path_idx;
DROP INDEX IF EXISTS public.pages_blocks_media_block_parent_id_idx;
DROP INDEX IF EXISTS public.pages_blocks_media_block_order_idx;
DROP INDEX IF EXISTS public.pages_blocks_media_block_media_idx;
DROP INDEX IF EXISTS public.pages_blocks_content_path_idx;
DROP INDEX IF EXISTS public.pages_blocks_content_parent_id_idx;
DROP INDEX IF EXISTS public.pages_blocks_content_order_idx;
DROP INDEX IF EXISTS public.pages_blocks_content_locales_locale_parent_id_unique;
DROP INDEX IF EXISTS public.pages__status_idx;
DROP INDEX IF EXISTS public.media_updated_at_idx;
DROP INDEX IF EXISTS public.media_filename_idx;
DROP INDEX IF EXISTS public.media_created_at_idx;
DROP INDEX IF EXISTS public._pages_v_version_version_updated_at_idx;
DROP INDEX IF EXISTS public._pages_v_version_version_slug_idx;
DROP INDEX IF EXISTS public._pages_v_version_version_created_at_idx;
DROP INDEX IF EXISTS public._pages_v_version_version__status_idx;
DROP INDEX IF EXISTS public._pages_v_version_meta_version_meta_image_idx;
DROP INDEX IF EXISTS public._pages_v_version_hero_version_hero_media_idx;
DROP INDEX IF EXISTS public._pages_v_version_hero_links_parent_id_idx;
DROP INDEX IF EXISTS public._pages_v_version_hero_links_order_idx;
DROP INDEX IF EXISTS public._pages_v_version_hero_links_locales_locale_parent_id_unique;
DROP INDEX IF EXISTS public._pages_v_updated_at_idx;
DROP INDEX IF EXISTS public._pages_v_snapshot_idx;
DROP INDEX IF EXISTS public._pages_v_rels_path_idx;
DROP INDEX IF EXISTS public._pages_v_rels_parent_idx;
DROP INDEX IF EXISTS public._pages_v_rels_pages_id_idx;
DROP INDEX IF EXISTS public._pages_v_rels_order_idx;
DROP INDEX IF EXISTS public._pages_v_published_locale_idx;
DROP INDEX IF EXISTS public._pages_v_parent_idx;
DROP INDEX IF EXISTS public._pages_v_locales_locale_parent_id_unique;
DROP INDEX IF EXISTS public._pages_v_latest_idx;
DROP INDEX IF EXISTS public._pages_v_created_at_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_services_services_parent_id_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_services_services_order_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_services_services_locales_locale_parent_id_u;
DROP INDEX IF EXISTS public._pages_v_blocks_services_services_image_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_services_path_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_services_parent_id_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_services_order_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_sentence_sentences_parent_id_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_sentence_sentences_order_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_sentence_sentences_locales_locale_parent_id_;
DROP INDEX IF EXISTS public._pages_v_blocks_sentence_path_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_sentence_parent_id_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_sentence_order_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_price_block_path_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_price_block_parent_id_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_price_block_order_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_opinion_block_path_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_opinion_block_parent_id_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_opinion_block_order_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_opinion_block_opinions_parent_id_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_opinion_block_opinions_order_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_opinion_block_opinions_media_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_opinion_block_opinions_locales_locale_parent;
DROP INDEX IF EXISTS public._pages_v_blocks_opinion_block_locales_locale_parent_id_uniqu;
DROP INDEX IF EXISTS public._pages_v_blocks_media_block_path_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_media_block_parent_id_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_media_block_order_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_media_block_media_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_content_path_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_content_parent_id_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_content_order_idx;
DROP INDEX IF EXISTS public._pages_v_blocks_content_locales_locale_parent_id_unique;
DROP INDEX IF EXISTS public._pages_v_autosave_idx;
ALTER TABLE IF EXISTS ONLY public.users_sessions DROP CONSTRAINT IF EXISTS users_sessions_pkey;
ALTER TABLE IF EXISTS ONLY public.users_roles DROP CONSTRAINT IF EXISTS users_roles_pkey;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_pkey;
ALTER TABLE IF EXISTS ONLY public.payload_preferences_rels DROP CONSTRAINT IF EXISTS payload_preferences_rels_pkey;
ALTER TABLE IF EXISTS ONLY public.payload_preferences DROP CONSTRAINT IF EXISTS payload_preferences_pkey;
ALTER TABLE IF EXISTS ONLY public.payload_migrations DROP CONSTRAINT IF EXISTS payload_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.payload_locked_documents_rels DROP CONSTRAINT IF EXISTS payload_locked_documents_rels_pkey;
ALTER TABLE IF EXISTS ONLY public.payload_locked_documents DROP CONSTRAINT IF EXISTS payload_locked_documents_pkey;
ALTER TABLE IF EXISTS ONLY public.payload_kv DROP CONSTRAINT IF EXISTS payload_kv_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_rels DROP CONSTRAINT IF EXISTS pages_rels_pkey;
ALTER TABLE IF EXISTS ONLY public.pages DROP CONSTRAINT IF EXISTS pages_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_locales DROP CONSTRAINT IF EXISTS pages_locales_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_hero_links DROP CONSTRAINT IF EXISTS pages_hero_links_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_hero_links_locales DROP CONSTRAINT IF EXISTS pages_hero_links_locales_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_services_services DROP CONSTRAINT IF EXISTS pages_blocks_services_services_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_services_services_locales DROP CONSTRAINT IF EXISTS pages_blocks_services_services_locales_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_services DROP CONSTRAINT IF EXISTS pages_blocks_services_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_sentence_sentences DROP CONSTRAINT IF EXISTS pages_blocks_sentence_sentences_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_sentence_sentences_locales DROP CONSTRAINT IF EXISTS pages_blocks_sentence_sentences_locales_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_sentence DROP CONSTRAINT IF EXISTS pages_blocks_sentence_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_price_block DROP CONSTRAINT IF EXISTS pages_blocks_price_block_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_opinion_block DROP CONSTRAINT IF EXISTS pages_blocks_opinion_block_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_opinion_block_opinions DROP CONSTRAINT IF EXISTS pages_blocks_opinion_block_opinions_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_opinion_block_opinions_locales DROP CONSTRAINT IF EXISTS pages_blocks_opinion_block_opinions_locales_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_opinion_block_locales DROP CONSTRAINT IF EXISTS pages_blocks_opinion_block_locales_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_media_block DROP CONSTRAINT IF EXISTS pages_blocks_media_block_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_content DROP CONSTRAINT IF EXISTS pages_blocks_content_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_content_locales DROP CONSTRAINT IF EXISTS pages_blocks_content_locales_pkey;
ALTER TABLE IF EXISTS ONLY public.media DROP CONSTRAINT IF EXISTS media_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_version_hero_links DROP CONSTRAINT IF EXISTS _pages_v_version_hero_links_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_version_hero_links_locales DROP CONSTRAINT IF EXISTS _pages_v_version_hero_links_locales_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_rels DROP CONSTRAINT IF EXISTS _pages_v_rels_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v DROP CONSTRAINT IF EXISTS _pages_v_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_locales DROP CONSTRAINT IF EXISTS _pages_v_locales_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_services_services DROP CONSTRAINT IF EXISTS _pages_v_blocks_services_services_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_services_services_locales DROP CONSTRAINT IF EXISTS _pages_v_blocks_services_services_locales_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_services DROP CONSTRAINT IF EXISTS _pages_v_blocks_services_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_sentence_sentences DROP CONSTRAINT IF EXISTS _pages_v_blocks_sentence_sentences_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_sentence_sentences_locales DROP CONSTRAINT IF EXISTS _pages_v_blocks_sentence_sentences_locales_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_sentence DROP CONSTRAINT IF EXISTS _pages_v_blocks_sentence_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_price_block DROP CONSTRAINT IF EXISTS _pages_v_blocks_price_block_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_opinion_block DROP CONSTRAINT IF EXISTS _pages_v_blocks_opinion_block_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_opinion_block_opinions DROP CONSTRAINT IF EXISTS _pages_v_blocks_opinion_block_opinions_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_opinion_block_opinions_locales DROP CONSTRAINT IF EXISTS _pages_v_blocks_opinion_block_opinions_locales_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_opinion_block_locales DROP CONSTRAINT IF EXISTS _pages_v_blocks_opinion_block_locales_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_media_block DROP CONSTRAINT IF EXISTS _pages_v_blocks_media_block_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_content DROP CONSTRAINT IF EXISTS _pages_v_blocks_content_pkey;
ALTER TABLE IF EXISTS ONLY public._pages_v_blocks_content_locales DROP CONSTRAINT IF EXISTS _pages_v_blocks_content_locales_pkey;
ALTER TABLE IF EXISTS public.users_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.payload_preferences_rels ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.payload_preferences ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.payload_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.payload_locked_documents_rels ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.payload_locked_documents ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.payload_kv ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.pages_rels ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.pages_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.pages_hero_links_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.pages_blocks_services_services_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.pages_blocks_sentence_sentences_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.pages_blocks_opinion_block_opinions_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.pages_blocks_opinion_block_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.pages_blocks_content_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.pages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.media ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_version_hero_links_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_version_hero_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_rels ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_blocks_services_services_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_blocks_services_services ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_blocks_services ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_blocks_sentence_sentences_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_blocks_sentence_sentences ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_blocks_sentence ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_blocks_price_block ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_blocks_opinion_block_opinions_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_blocks_opinion_block_opinions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_blocks_opinion_block_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_blocks_opinion_block ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_blocks_media_block ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_blocks_content_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v_blocks_content ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public._pages_v ALTER COLUMN id DROP DEFAULT;
DROP TABLE IF EXISTS public.users_sessions;
DROP SEQUENCE IF EXISTS public.users_roles_id_seq;
DROP TABLE IF EXISTS public.users_roles;
DROP SEQUENCE IF EXISTS public.users_id_seq;
DROP TABLE IF EXISTS public.users;
DROP SEQUENCE IF EXISTS public.payload_preferences_rels_id_seq;
DROP TABLE IF EXISTS public.payload_preferences_rels;
DROP SEQUENCE IF EXISTS public.payload_preferences_id_seq;
DROP TABLE IF EXISTS public.payload_preferences;
DROP SEQUENCE IF EXISTS public.payload_migrations_id_seq;
DROP TABLE IF EXISTS public.payload_migrations;
DROP SEQUENCE IF EXISTS public.payload_locked_documents_rels_id_seq;
DROP TABLE IF EXISTS public.payload_locked_documents_rels;
DROP SEQUENCE IF EXISTS public.payload_locked_documents_id_seq;
DROP TABLE IF EXISTS public.payload_locked_documents;
DROP SEQUENCE IF EXISTS public.payload_kv_id_seq;
DROP TABLE IF EXISTS public.payload_kv;
DROP SEQUENCE IF EXISTS public.pages_rels_id_seq;
DROP TABLE IF EXISTS public.pages_rels;
DROP SEQUENCE IF EXISTS public.pages_locales_id_seq;
DROP TABLE IF EXISTS public.pages_locales;
DROP SEQUENCE IF EXISTS public.pages_id_seq;
DROP SEQUENCE IF EXISTS public.pages_hero_links_locales_id_seq;
DROP TABLE IF EXISTS public.pages_hero_links_locales;
DROP TABLE IF EXISTS public.pages_hero_links;
DROP SEQUENCE IF EXISTS public.pages_blocks_services_services_locales_id_seq;
DROP TABLE IF EXISTS public.pages_blocks_services_services_locales;
DROP TABLE IF EXISTS public.pages_blocks_services_services;
DROP TABLE IF EXISTS public.pages_blocks_services;
DROP SEQUENCE IF EXISTS public.pages_blocks_sentence_sentences_locales_id_seq;
DROP TABLE IF EXISTS public.pages_blocks_sentence_sentences_locales;
DROP TABLE IF EXISTS public.pages_blocks_sentence_sentences;
DROP TABLE IF EXISTS public.pages_blocks_sentence;
DROP TABLE IF EXISTS public.pages_blocks_price_block;
DROP SEQUENCE IF EXISTS public.pages_blocks_opinion_block_opinions_locales_id_seq;
DROP TABLE IF EXISTS public.pages_blocks_opinion_block_opinions_locales;
DROP TABLE IF EXISTS public.pages_blocks_opinion_block_opinions;
DROP SEQUENCE IF EXISTS public.pages_blocks_opinion_block_locales_id_seq;
DROP TABLE IF EXISTS public.pages_blocks_opinion_block_locales;
DROP TABLE IF EXISTS public.pages_blocks_opinion_block;
DROP TABLE IF EXISTS public.pages_blocks_media_block;
DROP SEQUENCE IF EXISTS public.pages_blocks_content_locales_id_seq;
DROP TABLE IF EXISTS public.pages_blocks_content_locales;
DROP TABLE IF EXISTS public.pages_blocks_content;
DROP TABLE IF EXISTS public.pages;
DROP SEQUENCE IF EXISTS public.media_id_seq;
DROP TABLE IF EXISTS public.media;
DROP SEQUENCE IF EXISTS public._pages_v_version_hero_links_locales_id_seq;
DROP TABLE IF EXISTS public._pages_v_version_hero_links_locales;
DROP SEQUENCE IF EXISTS public._pages_v_version_hero_links_id_seq;
DROP TABLE IF EXISTS public._pages_v_version_hero_links;
DROP SEQUENCE IF EXISTS public._pages_v_rels_id_seq;
DROP TABLE IF EXISTS public._pages_v_rels;
DROP SEQUENCE IF EXISTS public._pages_v_locales_id_seq;
DROP TABLE IF EXISTS public._pages_v_locales;
DROP SEQUENCE IF EXISTS public._pages_v_id_seq;
DROP SEQUENCE IF EXISTS public._pages_v_blocks_services_services_locales_id_seq;
DROP TABLE IF EXISTS public._pages_v_blocks_services_services_locales;
DROP SEQUENCE IF EXISTS public._pages_v_blocks_services_services_id_seq;
DROP TABLE IF EXISTS public._pages_v_blocks_services_services;
DROP SEQUENCE IF EXISTS public._pages_v_blocks_services_id_seq;
DROP TABLE IF EXISTS public._pages_v_blocks_services;
DROP SEQUENCE IF EXISTS public._pages_v_blocks_sentence_sentences_locales_id_seq;
DROP TABLE IF EXISTS public._pages_v_blocks_sentence_sentences_locales;
DROP SEQUENCE IF EXISTS public._pages_v_blocks_sentence_sentences_id_seq;
DROP TABLE IF EXISTS public._pages_v_blocks_sentence_sentences;
DROP SEQUENCE IF EXISTS public._pages_v_blocks_sentence_id_seq;
DROP TABLE IF EXISTS public._pages_v_blocks_sentence;
DROP SEQUENCE IF EXISTS public._pages_v_blocks_price_block_id_seq;
DROP TABLE IF EXISTS public._pages_v_blocks_price_block;
DROP SEQUENCE IF EXISTS public._pages_v_blocks_opinion_block_opinions_locales_id_seq;
DROP TABLE IF EXISTS public._pages_v_blocks_opinion_block_opinions_locales;
DROP SEQUENCE IF EXISTS public._pages_v_blocks_opinion_block_opinions_id_seq;
DROP TABLE IF EXISTS public._pages_v_blocks_opinion_block_opinions;
DROP SEQUENCE IF EXISTS public._pages_v_blocks_opinion_block_locales_id_seq;
DROP TABLE IF EXISTS public._pages_v_blocks_opinion_block_locales;
DROP SEQUENCE IF EXISTS public._pages_v_blocks_opinion_block_id_seq;
DROP TABLE IF EXISTS public._pages_v_blocks_opinion_block;
DROP SEQUENCE IF EXISTS public._pages_v_blocks_media_block_id_seq;
DROP TABLE IF EXISTS public._pages_v_blocks_media_block;
DROP SEQUENCE IF EXISTS public._pages_v_blocks_content_locales_id_seq;
DROP TABLE IF EXISTS public._pages_v_blocks_content_locales;
DROP SEQUENCE IF EXISTS public._pages_v_blocks_content_id_seq;
DROP TABLE IF EXISTS public._pages_v_blocks_content;
DROP TABLE IF EXISTS public._pages_v;
DROP TYPE IF EXISTS public.enum_users_roles;
DROP TYPE IF EXISTS public.enum_pages_status;
DROP TYPE IF EXISTS public.enum_pages_hero_links_link_type;
DROP TYPE IF EXISTS public.enum_pages_hero_links_link_appearance;
DROP TYPE IF EXISTS public.enum__pages_v_version_status;
DROP TYPE IF EXISTS public.enum__pages_v_version_hero_links_link_type;
DROP TYPE IF EXISTS public.enum__pages_v_version_hero_links_link_appearance;
DROP TYPE IF EXISTS public.enum__pages_v_published_locale;
DROP TYPE IF EXISTS public._locales;
--
-- Name: _locales; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public._locales AS ENUM (
    'es',
    'eu'
);


--
-- Name: enum__pages_v_published_locale; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_published_locale AS ENUM (
    'es',
    'eu'
);


--
-- Name: enum__pages_v_version_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_version_hero_links_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum__pages_v_version_hero_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_version_hero_links_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum__pages_v_version_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum__pages_v_version_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_pages_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_hero_links_link_appearance AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum_pages_hero_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_hero_links_link_type AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_pages_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_pages_status AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_users_roles; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.enum_users_roles AS ENUM (
    'user',
    'admin',
    'guest'
);


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _pages_v; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v (
    id integer NOT NULL,
    parent_id integer,
    version_hero_media_id integer,
    version_hero_enable_text boolean,
    version_published_at timestamp(3) with time zone,
    version_slug_lock boolean DEFAULT true,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__pages_v_version_status DEFAULT 'draft'::public.enum__pages_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    autosave boolean,
    snapshot boolean,
    published_locale public.enum__pages_v_published_locale,
    version_hero_enable_sub_text boolean
);


--
-- Name: _pages_v_blocks_content; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_content (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    enable_section_title boolean,
    enable_title boolean,
    enable_rich_text boolean,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_content_id_seq OWNED BY public._pages_v_blocks_content.id;


--
-- Name: _pages_v_blocks_content_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_content_locales (
    section_title character varying,
    title character varying,
    rich_text jsonb,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL
);


--
-- Name: _pages_v_blocks_content_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_content_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_content_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_content_locales_id_seq OWNED BY public._pages_v_blocks_content_locales.id;


--
-- Name: _pages_v_blocks_media_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_media_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    media_id integer,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_media_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_media_block_id_seq OWNED BY public._pages_v_blocks_media_block.id;


--
-- Name: _pages_v_blocks_opinion_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_opinion_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    block_name character varying,
    enable_section_title boolean,
    enable_title boolean,
    enable_rich_text boolean
);


--
-- Name: _pages_v_blocks_opinion_block_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_opinion_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_opinion_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_opinion_block_id_seq OWNED BY public._pages_v_blocks_opinion_block.id;


--
-- Name: _pages_v_blocks_opinion_block_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_opinion_block_locales (
    section_title character varying,
    title character varying,
    rich_text jsonb,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL
);


--
-- Name: _pages_v_blocks_opinion_block_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_opinion_block_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_opinion_block_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_opinion_block_locales_id_seq OWNED BY public._pages_v_blocks_opinion_block_locales.id;


--
-- Name: _pages_v_blocks_opinion_block_opinions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_opinion_block_opinions (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    media_id integer,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_opinion_block_opinions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_opinion_block_opinions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_opinion_block_opinions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_opinion_block_opinions_id_seq OWNED BY public._pages_v_blocks_opinion_block_opinions.id;


--
-- Name: _pages_v_blocks_opinion_block_opinions_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_opinion_block_opinions_locales (
    opinion character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL
);


--
-- Name: _pages_v_blocks_opinion_block_opinions_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_opinion_block_opinions_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_opinion_block_opinions_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_opinion_block_opinions_locales_id_seq OWNED BY public._pages_v_blocks_opinion_block_opinions_locales.id;


--
-- Name: _pages_v_blocks_price_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_price_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    price numeric,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_price_block_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_price_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_price_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_price_block_id_seq OWNED BY public._pages_v_blocks_price_block.id;


--
-- Name: _pages_v_blocks_sentence; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_sentence (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_sentence_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_sentence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_sentence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_sentence_id_seq OWNED BY public._pages_v_blocks_sentence.id;


--
-- Name: _pages_v_blocks_sentence_sentences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_sentence_sentences (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_sentence_sentences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_sentence_sentences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_sentence_sentences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_sentence_sentences_id_seq OWNED BY public._pages_v_blocks_sentence_sentences.id;


--
-- Name: _pages_v_blocks_sentence_sentences_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_sentence_sentences_locales (
    title character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL
);


--
-- Name: _pages_v_blocks_sentence_sentences_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_sentence_sentences_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_sentence_sentences_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_sentence_sentences_locales_id_seq OWNED BY public._pages_v_blocks_sentence_sentences_locales.id;


--
-- Name: _pages_v_blocks_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_services (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    block_name character varying
);


--
-- Name: _pages_v_blocks_services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_services_id_seq OWNED BY public._pages_v_blocks_services.id;


--
-- Name: _pages_v_blocks_services_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_services_services (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    image_id integer,
    _uuid character varying
);


--
-- Name: _pages_v_blocks_services_services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_services_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_services_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_services_services_id_seq OWNED BY public._pages_v_blocks_services_services.id;


--
-- Name: _pages_v_blocks_services_services_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_blocks_services_services_locales (
    title character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL
);


--
-- Name: _pages_v_blocks_services_services_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_blocks_services_services_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_services_services_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_blocks_services_services_locales_id_seq OWNED BY public._pages_v_blocks_services_services_locales.id;


--
-- Name: _pages_v_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_id_seq OWNED BY public._pages_v.id;


--
-- Name: _pages_v_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_locales (
    version_slug character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL,
    version_title character varying,
    version_hero_title character varying,
    version_hero_text character varying,
    version_hero_subtext character varying,
    version_meta_title character varying,
    version_meta_image_id integer,
    version_meta_description character varying
);


--
-- Name: _pages_v_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_locales_id_seq OWNED BY public._pages_v_locales.id;


--
-- Name: _pages_v_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer
);


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_rels_id_seq OWNED BY public._pages_v_rels.id;


--
-- Name: _pages_v_version_hero_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_version_hero_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    link_type public.enum__pages_v_version_hero_links_link_type DEFAULT 'reference'::public.enum__pages_v_version_hero_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_appearance public.enum__pages_v_version_hero_links_link_appearance DEFAULT 'default'::public.enum__pages_v_version_hero_links_link_appearance,
    _uuid character varying
);


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_version_hero_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_version_hero_links_id_seq OWNED BY public._pages_v_version_hero_links.id;


--
-- Name: _pages_v_version_hero_links_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._pages_v_version_hero_links_locales (
    link_label character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL
);


--
-- Name: _pages_v_version_hero_links_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public._pages_v_version_hero_links_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_version_hero_links_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public._pages_v_version_hero_links_locales_id_seq OWNED BY public._pages_v_version_hero_links_locales.id;


--
-- Name: media; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.media (
    id integer NOT NULL,
    alt character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    url character varying,
    thumbnail_u_r_l character varying,
    filename character varying,
    mime_type character varying,
    filesize numeric,
    width numeric,
    height numeric,
    focal_x numeric,
    focal_y numeric,
    unpic_url character varying
);


--
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    slug_lock boolean DEFAULT true,
    hero_media_id integer,
    hero_enable_text boolean,
    published_at timestamp(3) with time zone,
    _status public.enum_pages_status DEFAULT 'draft'::public.enum_pages_status,
    hero_enable_sub_text boolean
);


--
-- Name: pages_blocks_content; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_content (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    enable_section_title boolean,
    enable_title boolean,
    enable_rich_text boolean,
    block_name character varying
);


--
-- Name: pages_blocks_content_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_content_locales (
    section_title character varying,
    title character varying,
    rich_text jsonb,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_content_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_content_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_content_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_content_locales_id_seq OWNED BY public.pages_blocks_content_locales.id;


--
-- Name: pages_blocks_media_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_media_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    media_id integer,
    block_name character varying
);


--
-- Name: pages_blocks_opinion_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_opinion_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying,
    enable_section_title boolean,
    enable_title boolean,
    enable_rich_text boolean
);


--
-- Name: pages_blocks_opinion_block_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_opinion_block_locales (
    section_title character varying,
    title character varying,
    rich_text jsonb,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_opinion_block_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_opinion_block_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_opinion_block_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_opinion_block_locales_id_seq OWNED BY public.pages_blocks_opinion_block_locales.id;


--
-- Name: pages_blocks_opinion_block_opinions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_opinion_block_opinions (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    media_id integer
);


--
-- Name: pages_blocks_opinion_block_opinions_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_opinion_block_opinions_locales (
    opinion character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_opinion_block_opinions_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_opinion_block_opinions_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_opinion_block_opinions_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_opinion_block_opinions_locales_id_seq OWNED BY public.pages_blocks_opinion_block_opinions_locales.id;


--
-- Name: pages_blocks_price_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_price_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    price numeric,
    block_name character varying
);


--
-- Name: pages_blocks_sentence; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_sentence (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying
);


--
-- Name: pages_blocks_sentence_sentences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_sentence_sentences (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL
);


--
-- Name: pages_blocks_sentence_sentences_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_sentence_sentences_locales (
    title character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_sentence_sentences_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_sentence_sentences_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_sentence_sentences_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_sentence_sentences_locales_id_seq OWNED BY public.pages_blocks_sentence_sentences_locales.id;


--
-- Name: pages_blocks_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_services (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying
);


--
-- Name: pages_blocks_services_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_services_services (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    image_id integer
);


--
-- Name: pages_blocks_services_services_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_services_services_locales (
    title character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_blocks_services_services_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_blocks_services_services_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_services_services_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_blocks_services_services_locales_id_seq OWNED BY public.pages_blocks_services_services_locales.id;


--
-- Name: pages_hero_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_hero_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_pages_hero_links_link_type DEFAULT 'reference'::public.enum_pages_hero_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_appearance public.enum_pages_hero_links_link_appearance DEFAULT 'default'::public.enum_pages_hero_links_link_appearance
);


--
-- Name: pages_hero_links_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_hero_links_locales (
    link_label character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id character varying NOT NULL
);


--
-- Name: pages_hero_links_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_hero_links_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_hero_links_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_hero_links_locales_id_seq OWNED BY public.pages_hero_links_locales.id;


--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: pages_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_locales (
    slug character varying,
    id integer NOT NULL,
    _locale public._locales NOT NULL,
    _parent_id integer NOT NULL,
    title character varying,
    hero_title character varying,
    hero_text character varying,
    hero_subtext character varying,
    meta_title character varying,
    meta_image_id integer,
    meta_description character varying
);


--
-- Name: pages_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_locales_id_seq OWNED BY public.pages_locales.id;


--
-- Name: pages_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer
);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_rels_id_seq OWNED BY public.pages_rels.id;


--
-- Name: payload_kv; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_kv (
    id integer NOT NULL,
    key character varying NOT NULL,
    data jsonb NOT NULL
);


--
-- Name: payload_kv_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_kv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_kv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_kv_id_seq OWNED BY public.payload_kv.id;


--
-- Name: payload_locked_documents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_locked_documents (
    id integer NOT NULL,
    global_slug character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_locked_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_locked_documents_id_seq OWNED BY public.payload_locked_documents.id;


--
-- Name: payload_locked_documents_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_locked_documents_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    users_id integer,
    media_id integer,
    pages_id integer
);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_locked_documents_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_locked_documents_rels_id_seq OWNED BY public.payload_locked_documents_rels.id;


--
-- Name: payload_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_migrations (
    id integer NOT NULL,
    name character varying,
    batch numeric,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_migrations_id_seq OWNED BY public.payload_migrations.id;


--
-- Name: payload_preferences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_preferences (
    id integer NOT NULL,
    key character varying,
    value jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_preferences_id_seq OWNED BY public.payload_preferences.id;


--
-- Name: payload_preferences_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_preferences_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    users_id integer
);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_preferences_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_preferences_rels_id_seq OWNED BY public.payload_preferences_rels.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    email character varying NOT NULL,
    reset_password_token character varying,
    reset_password_expiration timestamp(3) with time zone,
    salt character varying,
    hash character varying,
    login_attempts numeric DEFAULT 0,
    lock_until timestamp(3) with time zone,
    name character varying NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users_roles (
    "order" integer NOT NULL,
    parent_id integer NOT NULL,
    value public.enum_users_roles,
    id integer NOT NULL
);


--
-- Name: users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_roles_id_seq OWNED BY public.users_roles.id;


--
-- Name: users_sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users_sessions (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    created_at timestamp(3) with time zone,
    expires_at timestamp(3) with time zone NOT NULL
);


--
-- Name: _pages_v id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v ALTER COLUMN id SET DEFAULT nextval('public._pages_v_id_seq'::regclass);


--
-- Name: _pages_v_blocks_content id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_content_id_seq'::regclass);


--
-- Name: _pages_v_blocks_content_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content_locales ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_content_locales_id_seq'::regclass);


--
-- Name: _pages_v_blocks_media_block id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_media_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_media_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_opinion_block id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_opinion_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_opinion_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_opinion_block_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_opinion_block_locales ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_opinion_block_locales_id_seq'::regclass);


--
-- Name: _pages_v_blocks_opinion_block_opinions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_opinion_block_opinions ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_opinion_block_opinions_id_seq'::regclass);


--
-- Name: _pages_v_blocks_opinion_block_opinions_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_opinion_block_opinions_locales ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_opinion_block_opinions_locales_id_seq'::regclass);


--
-- Name: _pages_v_blocks_price_block id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_price_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_price_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_sentence id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_sentence ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_sentence_id_seq'::regclass);


--
-- Name: _pages_v_blocks_sentence_sentences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_sentence_sentences ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_sentence_sentences_id_seq'::regclass);


--
-- Name: _pages_v_blocks_sentence_sentences_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_sentence_sentences_locales ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_sentence_sentences_locales_id_seq'::regclass);


--
-- Name: _pages_v_blocks_services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_services ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_services_id_seq'::regclass);


--
-- Name: _pages_v_blocks_services_services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_services_services ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_services_services_id_seq'::regclass);


--
-- Name: _pages_v_blocks_services_services_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_services_services_locales ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_services_services_locales_id_seq'::regclass);


--
-- Name: _pages_v_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_locales ALTER COLUMN id SET DEFAULT nextval('public._pages_v_locales_id_seq'::regclass);


--
-- Name: _pages_v_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels ALTER COLUMN id SET DEFAULT nextval('public._pages_v_rels_id_seq'::regclass);


--
-- Name: _pages_v_version_hero_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_links ALTER COLUMN id SET DEFAULT nextval('public._pages_v_version_hero_links_id_seq'::regclass);


--
-- Name: _pages_v_version_hero_links_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_links_locales ALTER COLUMN id SET DEFAULT nextval('public._pages_v_version_hero_links_locales_id_seq'::regclass);


--
-- Name: media id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages_blocks_content_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_content_locales_id_seq'::regclass);


--
-- Name: pages_blocks_opinion_block_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_opinion_block_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_opinion_block_locales_id_seq'::regclass);


--
-- Name: pages_blocks_opinion_block_opinions_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_opinion_block_opinions_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_opinion_block_opinions_locales_id_seq'::regclass);


--
-- Name: pages_blocks_sentence_sentences_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_sentence_sentences_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_sentence_sentences_locales_id_seq'::regclass);


--
-- Name: pages_blocks_services_services_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services_services_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_blocks_services_services_locales_id_seq'::regclass);


--
-- Name: pages_hero_links_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_hero_links_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_hero_links_locales_id_seq'::regclass);


--
-- Name: pages_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_locales ALTER COLUMN id SET DEFAULT nextval('public.pages_locales_id_seq'::regclass);


--
-- Name: pages_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels ALTER COLUMN id SET DEFAULT nextval('public.pages_rels_id_seq'::regclass);


--
-- Name: payload_kv id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_kv ALTER COLUMN id SET DEFAULT nextval('public.payload_kv_id_seq'::regclass);


--
-- Name: payload_locked_documents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_id_seq'::regclass);


--
-- Name: payload_locked_documents_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_rels_id_seq'::regclass);


--
-- Name: payload_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_migrations ALTER COLUMN id SET DEFAULT nextval('public.payload_migrations_id_seq'::regclass);


--
-- Name: payload_preferences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_id_seq'::regclass);


--
-- Name: payload_preferences_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_rels_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: users_roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_roles ALTER COLUMN id SET DEFAULT nextval('public.users_roles_id_seq'::regclass);


--
-- Data for Name: _pages_v; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v (id, parent_id, version_hero_media_id, version_hero_enable_text, version_published_at, version_slug_lock, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, autosave, snapshot, published_locale, version_hero_enable_sub_text) FROM stdin;
213	5	22	\N	2026-01-09 13:00:00+01	f	2026-01-19 10:26:59.865+01	2026-01-17 18:13:19.815+01	published	2026-01-19 10:26:59.878+01	2026-01-19 10:26:59.878+01	t	f	\N	\N	\N
205	5	22	\N	2026-01-09 13:00:00+01	t	2026-01-17 20:32:14.925+01	2026-01-17 18:13:19.815+01	published	2026-01-17 20:32:14.931+01	2026-01-17 20:32:14.931+01	f	f	\N	\N	\N
204	5	22	\N	2026-01-09 13:00:00+01	t	2026-01-17 20:32:13.752+01	2026-01-17 18:13:19.815+01	published	2026-01-17 20:32:13.766+01	2026-01-17 20:32:13.766+01	f	f	\N	\N	\N
203	5	22	\N	2026-01-09 13:00:00+01	t	2026-01-17 20:32:07.297+01	2026-01-17 18:13:19.815+01	draft	2026-01-17 20:32:07.297+01	2026-01-17 20:32:07.297+01	f	t	\N	\N	\N
194	5	22	\N	2026-01-09 13:00:00+01	t	2026-01-17 20:28:00.733+01	2026-01-17 18:13:19.815+01	published	2026-01-17 20:28:00.74+01	2026-01-17 20:28:00.74+01	f	f	\N	\N	\N
184	5	22	\N	2026-01-09 13:00:00+01	f	2026-01-17 18:24:08.271+01	2026-01-17 18:13:19.815+01	published	2026-01-17 18:24:08.287+01	2026-01-17 18:24:08.287+01	f	f	\N	\N	\N
199	3	16	\N	2026-01-09 13:00:00+01	f	2026-01-17 20:31:11.582+01	2026-01-17 11:30:52.527+01	published	2026-01-17 20:31:11.597+01	2026-01-17 20:31:11.597+01	f	f	\N	\N	\N
198	3	16	\N	2026-01-09 13:00:00+01	f	2026-01-17 20:31:06.968+01	2026-01-17 11:30:52.527+01	published	2026-01-17 20:31:06.985+01	2026-01-17 20:31:06.985+01	f	f	\N	\N	\N
197	3	16	\N	2026-01-09 13:00:00+01	f	2026-01-17 20:30:52.081+01	2026-01-17 11:30:52.527+01	draft	2026-01-17 20:30:52.081+01	2026-01-17 20:30:52.081+01	f	t	\N	\N	\N
189	3	16	\N	2026-01-09 13:00:00+01	f	2026-01-17 20:25:11.377+01	2026-01-17 11:30:52.527+01	published	2026-01-17 20:25:11.403+01	2026-01-17 20:25:11.403+01	f	f	\N	\N	\N
188	3	16	\N	2026-01-09 13:00:00+01	f	2026-01-17 20:25:01.205+01	2026-01-17 11:30:52.527+01	draft	2026-01-17 20:24:46.929+01	2026-01-17 20:25:01.205+01	f	t	\N	\N	\N
206	2	16	\N	2026-01-01 13:00:00+01	t	2026-01-18 18:36:06.787+01	2026-01-15 19:04:11.439+01	published	2026-01-18 18:36:06.824+01	2026-01-18 18:36:06.824+01	f	f	\N	\N	\N
113	2	16	\N	2026-01-01 13:00:00+01	t	2026-01-17 12:47:33.843+01	2026-01-15 19:04:11.439+01	published	2026-01-17 12:47:33.865+01	2026-01-17 12:47:33.865+01	f	f	\N	\N	\N
186	2	16	\N	2026-01-01 13:00:00+01	t	2026-01-17 20:22:32.368+01	2026-01-15 19:04:11.439+01	draft	2026-01-17 20:20:31.294+01	2026-01-17 20:22:32.368+01	f	t	\N	\N	\N
217	4	16	t	2026-01-09 13:00:00+01	t	2026-01-19 10:47:22.252+01	2026-01-17 13:33:56.022+01	published	2026-01-19 10:47:22.268+01	2026-01-19 10:47:22.268+01	t	f	\N	\N	t
215	4	16	t	2026-01-09 13:00:00+01	t	2026-01-19 10:27:40.449+01	2026-01-17 13:33:56.022+01	published	2026-01-19 10:27:40.469+01	2026-01-19 10:27:40.469+01	f	f	\N	\N	t
210	4	16	t	2026-01-09 13:00:00+01	t	2026-01-19 10:19:21.966+01	2026-01-17 13:33:56.022+01	draft	2026-01-19 10:19:21.966+01	2026-01-19 10:19:21.966+01	f	t	\N	\N	t
192	4	16	t	2026-01-09 13:00:00+01	t	2026-01-17 20:26:53.168+01	2026-01-17 13:33:56.022+01	published	2026-01-17 20:26:53.188+01	2026-01-17 20:26:53.188+01	f	f	\N	\N	t
191	4	16	t	2026-01-09 13:00:00+01	t	2026-01-17 20:26:39.115+01	2026-01-17 13:33:56.022+01	draft	2026-01-17 20:26:39.115+01	2026-01-17 20:26:39.115+01	f	t	\N	\N	t
193	5	22	\N	2026-01-09 13:00:00+01	t	2026-01-17 20:27:52.074+01	2026-01-17 18:13:19.815+01	draft	2026-01-17 20:27:52.074+01	2026-01-17 20:27:52.074+01	f	t	\N	\N	\N
185	5	22	\N	2026-01-09 13:00:00+01	t	2026-01-17 18:25:40.272+01	2026-01-17 18:13:19.815+01	published	2026-01-17 18:25:40.28+01	2026-01-17 18:25:40.28+01	f	f	\N	\N	\N
183	5	22	\N	2026-01-09 13:00:00+01	f	2026-01-17 18:21:55.256+01	2026-01-17 18:13:19.815+01	draft	2026-01-17 18:21:55.256+01	2026-01-17 18:21:55.256+01	f	t	\N	\N	\N
182	5	22	\N	2026-01-09 13:00:00+01	f	2026-01-17 18:21:50.029+01	2026-01-17 18:13:19.815+01	published	2026-01-17 18:21:50.042+01	2026-01-17 18:21:50.042+01	f	f	\N	\N	\N
214	3	16	\N	2026-01-09 13:00:00+01	t	2026-01-19 10:27:23.307+01	2026-01-17 11:30:52.527+01	published	2026-01-19 10:27:23.327+01	2026-01-19 10:27:23.327+01	t	f	\N	\N	\N
190	3	16	\N	2026-01-09 13:00:00+01	f	2026-01-17 20:26:09.393+01	2026-01-17 11:30:52.527+01	published	2026-01-17 20:26:09.42+01	2026-01-17 20:26:09.42+01	f	f	\N	\N	\N
122	3	16	\N	2026-01-09 13:00:00+01	f	2026-01-17 13:23:49.085+01	2026-01-17 11:30:52.527+01	published	2026-01-17 13:23:49.098+01	2026-01-17 13:23:49.098+01	f	f	\N	\N	\N
121	3	16	\N	2026-01-09 13:00:00+01	f	2026-01-17 13:23:44.516+01	2026-01-17 11:30:52.527+01	draft	2026-01-17 13:23:44.516+01	2026-01-17 13:23:44.516+01	f	t	\N	\N	\N
120	3	16	\N	2026-01-09 13:00:00+01	f	2026-01-17 13:23:39.14+01	2026-01-17 11:30:52.527+01	published	2026-01-17 13:23:39.162+01	2026-01-17 13:23:39.162+01	f	f	\N	\N	\N
216	2	16	\N	2026-01-01 13:00:00+01	t	2026-01-19 10:27:56.023+01	2026-01-15 19:04:11.439+01	published	2026-01-19 10:27:56.045+01	2026-01-19 10:27:56.045+01	t	f	\N	\N	\N
209	2	16	\N	2026-01-01 13:00:00+01	t	2026-01-18 20:36:18.492+01	2026-01-15 19:04:11.439+01	draft	2026-01-18 20:36:18.492+01	2026-01-18 20:36:18.492+01	f	t	\N	\N	\N
208	2	16	\N	2026-01-01 13:00:00+01	t	2026-01-18 20:36:12.679+01	2026-01-15 19:04:11.439+01	published	2026-01-18 20:36:12.709+01	2026-01-18 20:36:12.709+01	f	f	\N	\N	\N
207	2	16	\N	2026-01-01 13:00:00+01	t	2026-01-18 20:36:00.507+01	2026-01-15 19:04:11.439+01	draft	2026-01-18 20:36:00.507+01	2026-01-18 20:36:00.507+01	f	t	\N	\N	\N
196	2	16	\N	2026-01-01 13:00:00+01	t	2026-01-17 20:29:06.821+01	2026-01-15 19:04:11.439+01	published	2026-01-17 20:29:06.846+01	2026-01-17 20:29:06.846+01	f	f	\N	\N	\N
195	2	16	\N	2026-01-01 13:00:00+01	t	2026-01-17 20:28:55.516+01	2026-01-15 19:04:11.439+01	draft	2026-01-17 20:28:55.516+01	2026-01-17 20:28:55.516+01	f	t	\N	\N	\N
187	2	16	\N	2026-01-01 13:00:00+01	t	2026-01-17 20:22:34.38+01	2026-01-15 19:04:11.439+01	published	2026-01-17 20:22:34.413+01	2026-01-17 20:22:34.413+01	f	f	\N	\N	\N
212	4	16	t	2026-01-09 13:00:00+01	t	2026-01-19 10:19:43.077+01	2026-01-17 13:33:56.022+01	draft	2026-01-19 10:19:43.077+01	2026-01-19 10:19:43.077+01	f	t	\N	\N	t
211	4	16	t	2026-01-09 13:00:00+01	t	2026-01-19 10:19:37.225+01	2026-01-17 13:33:56.022+01	published	2026-01-19 10:19:37.252+01	2026-01-19 10:19:37.252+01	f	f	\N	\N	t
201	4	16	t	2026-01-09 13:00:00+01	t	2026-01-17 20:31:41.89+01	2026-01-17 13:33:56.022+01	published	2026-01-17 20:31:41.907+01	2026-01-17 20:31:41.907+01	f	f	\N	\N	t
200	4	16	t	2026-01-09 13:00:00+01	t	2026-01-17 20:31:34.3+01	2026-01-17 13:33:56.022+01	draft	2026-01-17 20:31:34.3+01	2026-01-17 20:31:34.3+01	f	t	\N	\N	t
202	4	16	t	2026-01-09 13:00:00+01	t	2026-01-17 20:31:42.787+01	2026-01-17 13:33:56.022+01	published	2026-01-17 20:31:42.807+01	2026-01-17 20:31:42.807+01	f	f	\N	\N	t
\.


--
-- Data for Name: _pages_v_blocks_content; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_content (_order, _parent_id, _path, id, enable_section_title, enable_title, enable_rich_text, _uuid, block_name) FROM stdin;
1	195	version.layout	1604	\N	t	t	696952f1888cd85a74058c84	Inicio
3	195	version.layout	1605	t	t	t	6969542a888cd85a74058c86	Servicios
5	195	version.layout	1606	t	t	t	69695ada692dd42525b58230	Mi trabajo
1	217	version.layout	1671	t	t	\N	696b825f6af15f6661f81efa	Inicio
3	217	version.layout	1672	t	t	t	696b83976af15f6661f81f08	 Consultas           
1	196	version.layout	1607	\N	t	t	696952f1888cd85a74058c84	Inicio
3	196	version.layout	1608	t	t	t	6969542a888cd85a74058c86	Servicios
5	196	version.layout	1609	t	t	t	69695ada692dd42525b58230	Mi trabajo
6	217	version.layout	1673	f	t	t	696b83f56af15f6661f81f0a	 Plan de sueño personalizado con seguimiento 
9	217	version.layout	1674	\N	t	t	696b84376af15f6661f81f0c	 Plan de sueño conmigo, pero a tu ritmo 
12	217	version.layout	1675	\N	t	t	696b84676af15f6661f81f0e	Plan a vuestro ritmo
15	217	version.layout	1676	\N	t	t	696b84a76af15f6661f81f10	Encuentros grupales
1	190	version.layout	1591	t	t	t	696b657368f516778d0ed291	Sobre-mi
1	216	version.layout	1668	\N	t	t	696952f1888cd85a74058c84	Inicio
3	216	version.layout	1669	t	t	t	6969542a888cd85a74058c86	Servicios
5	216	version.layout	1670	t	t	t	69695ada692dd42525b58230	Mi trabajo
1	113	version.layout	830	\N	t	t	696952f1888cd85a74058c84	Inicio
3	113	version.layout	831	t	t	t	6969542a888cd85a74058c86	Servicios
5	113	version.layout	832	t	t	t	69695ada692dd42525b58230	Mi trabajo
1	191	version.layout	1592	t	t	\N	696b825f6af15f6661f81efa	Inicio
3	191	version.layout	1593	t	t	t	696b83976af15f6661f81f08	 Consultas           
6	191	version.layout	1594	f	t	t	696b83f56af15f6661f81f0a	 Plan de sueño personalizado con seguimiento 
9	191	version.layout	1595	\N	t	t	696b84376af15f6661f81f0c	 Plan de sueño conmigo, pero a tu ritmo 
12	191	version.layout	1596	\N	t	t	696b84676af15f6661f81f0e	Plan a vuestro ritmo
15	191	version.layout	1597	\N	t	t	696b84a76af15f6661f81f10	Encuentros grupales
1	192	version.layout	1598	t	t	\N	696b825f6af15f6661f81efa	Inicio
3	192	version.layout	1599	t	t	t	696b83976af15f6661f81f08	 Consultas           
6	192	version.layout	1600	f	t	t	696b83f56af15f6661f81f0a	 Plan de sueño personalizado con seguimiento 
9	192	version.layout	1601	\N	t	t	696b84376af15f6661f81f0c	 Plan de sueño conmigo, pero a tu ritmo 
12	192	version.layout	1602	\N	t	t	696b84676af15f6661f81f0e	Plan a vuestro ritmo
1	197	version.layout	1610	t	t	t	696b657368f516778d0ed291	Sobre-mi
1	198	version.layout	1611	t	t	t	696b657368f516778d0ed291	Sobre-mi
1	199	version.layout	1612	t	t	t	696b657368f516778d0ed291	Sobre-mi
15	192	version.layout	1603	\N	t	t	696b84a76af15f6661f81f10	Encuentros grupales
1	200	version.layout	1613	t	t	\N	696b825f6af15f6661f81efa	Inicio
3	200	version.layout	1614	t	t	t	696b83976af15f6661f81f08	 Consultas           
6	200	version.layout	1615	f	t	t	696b83f56af15f6661f81f0a	 Plan de sueño personalizado con seguimiento 
9	200	version.layout	1616	\N	t	t	696b84376af15f6661f81f0c	 Plan de sueño conmigo, pero a tu ritmo 
12	200	version.layout	1617	\N	t	t	696b84676af15f6661f81f0e	Plan a vuestro ritmo
15	200	version.layout	1618	\N	t	t	696b84a76af15f6661f81f10	Encuentros grupales
1	201	version.layout	1619	t	t	\N	696b825f6af15f6661f81efa	Inicio
3	201	version.layout	1620	t	t	t	696b83976af15f6661f81f08	 Consultas           
6	201	version.layout	1621	f	t	t	696b83f56af15f6661f81f0a	 Plan de sueño personalizado con seguimiento 
9	201	version.layout	1622	\N	t	t	696b84376af15f6661f81f0c	 Plan de sueño conmigo, pero a tu ritmo 
12	201	version.layout	1623	\N	t	t	696b84676af15f6661f81f0e	Plan a vuestro ritmo
15	201	version.layout	1624	\N	t	t	696b84a76af15f6661f81f10	Encuentros grupales
1	202	version.layout	1625	t	t	\N	696b825f6af15f6661f81efa	Inicio
3	202	version.layout	1626	t	t	t	696b83976af15f6661f81f08	 Consultas           
6	202	version.layout	1627	f	t	t	696b83f56af15f6661f81f0a	 Plan de sueño personalizado con seguimiento 
9	202	version.layout	1628	\N	t	t	696b84376af15f6661f81f0c	 Plan de sueño conmigo, pero a tu ritmo 
12	202	version.layout	1629	\N	t	t	696b84676af15f6661f81f0e	Plan a vuestro ritmo
15	202	version.layout	1630	\N	t	t	696b84a76af15f6661f81f10	Encuentros grupales
1	206	version.layout	1631	\N	t	t	696952f1888cd85a74058c84	Inicio
3	206	version.layout	1632	t	t	t	6969542a888cd85a74058c86	Servicios
5	206	version.layout	1633	t	t	t	69695ada692dd42525b58230	Mi trabajo
1	210	version.layout	1643	t	t	\N	696b825f6af15f6661f81efa	Inicio
3	210	version.layout	1644	t	t	t	696b83976af15f6661f81f08	 Consultas           
6	210	version.layout	1645	f	t	t	696b83f56af15f6661f81f0a	 Plan de sueño personalizado con seguimiento 
9	210	version.layout	1646	\N	t	t	696b84376af15f6661f81f0c	 Plan de sueño conmigo, pero a tu ritmo 
12	210	version.layout	1647	\N	t	t	696b84676af15f6661f81f0e	Plan a vuestro ritmo
15	210	version.layout	1648	\N	t	t	696b84a76af15f6661f81f10	Encuentros grupales
1	207	version.layout	1634	\N	t	t	696952f1888cd85a74058c84	Inicio
3	207	version.layout	1635	t	t	t	6969542a888cd85a74058c86	Servicios
5	207	version.layout	1636	t	t	t	69695ada692dd42525b58230	Mi trabajo
1	208	version.layout	1637	\N	t	t	696952f1888cd85a74058c84	Inicio
3	208	version.layout	1638	t	t	t	6969542a888cd85a74058c86	Servicios
5	208	version.layout	1639	t	t	t	69695ada692dd42525b58230	Mi trabajo
1	209	version.layout	1640	\N	t	t	696952f1888cd85a74058c84	Inicio
3	209	version.layout	1641	t	t	t	6969542a888cd85a74058c86	Servicios
5	209	version.layout	1642	t	t	t	69695ada692dd42525b58230	Mi trabajo
1	211	version.layout	1649	t	t	\N	696b825f6af15f6661f81efa	Inicio
3	211	version.layout	1650	t	t	t	696b83976af15f6661f81f08	 Consultas           
6	211	version.layout	1651	f	t	t	696b83f56af15f6661f81f0a	 Plan de sueño personalizado con seguimiento 
9	211	version.layout	1652	\N	t	t	696b84376af15f6661f81f0c	 Plan de sueño conmigo, pero a tu ritmo 
12	211	version.layout	1653	\N	t	t	696b84676af15f6661f81f0e	Plan a vuestro ritmo
15	211	version.layout	1654	\N	t	t	696b84a76af15f6661f81f10	Encuentros grupales
1	212	version.layout	1655	t	t	\N	696b825f6af15f6661f81efa	Inicio
3	212	version.layout	1656	t	t	t	696b83976af15f6661f81f08	 Consultas           
6	212	version.layout	1657	f	t	t	696b83f56af15f6661f81f0a	 Plan de sueño personalizado con seguimiento 
9	212	version.layout	1658	\N	t	t	696b84376af15f6661f81f0c	 Plan de sueño conmigo, pero a tu ritmo 
12	212	version.layout	1659	\N	t	t	696b84676af15f6661f81f0e	Plan a vuestro ritmo
15	212	version.layout	1660	\N	t	t	696b84a76af15f6661f81f10	Encuentros grupales
1	214	version.layout	1661	t	t	t	696b657368f516778d0ed291	Sobre-mi
1	186	version.layout	1582	\N	t	t	696952f1888cd85a74058c84	Inicio
3	186	version.layout	1583	t	t	t	6969542a888cd85a74058c86	Servicios
5	186	version.layout	1584	t	t	t	69695ada692dd42525b58230	Mi trabajo
1	187	version.layout	1585	\N	t	t	696952f1888cd85a74058c84	Inicio
3	187	version.layout	1586	t	t	t	6969542a888cd85a74058c86	Servicios
5	187	version.layout	1587	t	t	t	69695ada692dd42525b58230	Mi trabajo
1	120	version.layout	876	t	t	t	696b657368f516778d0ed291	Sobre-mi
1	121	version.layout	877	t	t	t	696b657368f516778d0ed291	Sobre-mi
1	122	version.layout	878	t	t	t	696b657368f516778d0ed291	Sobre-mi
1	215	version.layout	1662	t	t	\N	696b825f6af15f6661f81efa	Inicio
1	188	version.layout	1589	t	t	t	696b657368f516778d0ed291	Sobre-mi
1	189	version.layout	1590	t	t	t	696b657368f516778d0ed291	Sobre-mi
3	215	version.layout	1663	t	t	t	696b83976af15f6661f81f08	 Consultas           
6	215	version.layout	1664	f	t	t	696b83f56af15f6661f81f0a	 Plan de sueño personalizado con seguimiento 
9	215	version.layout	1665	\N	t	t	696b84376af15f6661f81f0c	 Plan de sueño conmigo, pero a tu ritmo 
12	215	version.layout	1666	\N	t	t	696b84676af15f6661f81f0e	Plan a vuestro ritmo
15	215	version.layout	1667	\N	t	t	696b84a76af15f6661f81f10	Encuentros grupales
\.


--
-- Data for Name: _pages_v_blocks_content_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_content_locales (section_title, title, rich_text, id, _locale, _parent_id) FROM stdin;
\N	¡Tengo ganas de conocer tu caso! 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "El apego seguro es aquel que se crea cuando las necesidades fisiológicas y emocionales de vuestro peque siempre están atendidas. Si lo hacemos durante el día, dándole cariño, atención y apoyo en todos los momentos, no únicamente en los malos, ¿Cómo no hacerlo a la noche también? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2277	es	1604
\N	Zure kasuaren berri izateko irrikitan nago!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Gure txikiaren behar fisiologiko eta emozionalak zaintzen ditugunean, atxikimendu seguru bat lortzen dugu. Guzti hau, egunean zehar lortzen dugu; maitasuna eskeiniz, behar duenean lagunduz, bere babesleku izanda, eta ez bakarrik momentu txarretan. ¿Nola ez dugu ba, gauean ere egingo?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2278	eu	1604
Servicios	Te ofrezco algo que realmente se adapta a tus necesidades 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué se despierta a los 30-45 min de haberlo acostado?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Sólo se duerme comiendo o en movimiento?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué no puedo dejarlo en la cuna?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Cómo puedo ayudar a mi peque para que duerma durante toda la noche?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Se despierta cada 2 horas?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si te haces alguna o todas estas preguntas, escríbeme, Te aseguro que podemos cambiarlo.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "He creado unos programas que cubren muchas de las situaciones que otros como tú han compartido conmigo, échales un vistazo, y si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Te cuento un poco más, cada programa está diseñado para cubrir unas necesidades diferentes, dependiendo del momento, de la edad, la situación, objetivos y ganas.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2279	es	1605
Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Zergatik esnatzen da oheratu eta 30-45 minutura? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zergatik ezin dut sehaskan utzi? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nola lagundu behar diot nire seme edo alabari gau osoan lo egin dezan?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Galdera hauetakoren bat edo guztiak badituzu, idatzi iezadazu. Ziurtatzen dizut alda ditzakegula.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2280	eu	1605
Mi trabajo	Un poquito más	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cada bebé es muy diferente. Su temperamento, situación, edad, dónde duerme, cómo se duerme... Todo influye, así que no puedo aplicar un único método. Estoy certificada como asesora, pero sobre todo mi experiencia me aporta una visión global de cada caso.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Es normal que no des un paso hacia el cambio por miedo a que el bebé lo pase mal. Pero confia en mi, cuando lo hacemos, es asombroso la capacidad que tienen para adaptarse y sentirás que le has hecho un regalo!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Verle dormir, por fín te hará feliz y disfrutaras de esos momentos. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2281	es	1606
Nire lana	Pixka bat gehiago	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Haur bakoitza oso desberdina da. Beren izaerak, egoerak, adinak, non lo egiten duten, nola lo hartzen duten... Dena eragiten du, beraz, ezin dut metodo bakarra aplikatu. Aholkulari ziurtatua naiz, baina batez ere, nire esperientziak kasu bakoitzaren ikuspegi holistikoa ematen dit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Normala da aldaketa bat egiteko zalantzak izatea haurra haserretzeko beldurrez. Baina sinets iezadazu, egiten dugunean, egokitzeko duten gaitasuna harrigarria da, eta opari bat eman diezula sentituko duzu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Azkenean lo egiten ikusteak zoriontsu egingo zaitu eta une horiek gozatuko dituzu.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2282	eu	1606
\N	¡Tengo ganas de conocer tu caso! 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "El apego seguro es aquel que se crea cuando las necesidades fisiológicas y emocionales de vuestro peque siempre están atendidas. Si lo hacemos durante el día, dándole cariño, atención y apoyo en todos los momentos, no únicamente en los malos, ¿Cómo no hacerlo a la noche también? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2283	es	1607
sobre mí	¡Toda una aventura!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Soy Alazne, la maternidad y las noches sin dormir me llevaron a", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "formarme como asesora de sueño infantil.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mi niño mayor, Inari tiene 4 años. Hasta los dos años no dormíamos más de dos horas seguidas, continuaba dándole pecho a demanda y hacíamos colecho para sobrevivir. Realmente ninguno de los dos descansábamos y yo me despertaba peor de lo que me había acostado.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuando las noches sin dormir son constantes, y al día siguiente hay que trabajar o cuidar de un bebé puede ser un suplicio o una pesadilla que nos afecte emocionalmente. En mi caso, estar con mi bebé era agotador, y las horas del día se me hacían eternas…", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento nos sorprendió la pandemia y aunque yo no lo sabía estaba embarazada de Aia, mi niña pequeña. Mi cuerpo me decía que había llegado el momento y mi mente no daba más de si, todos necesitábamos dormir con urgencia", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Nos pusimos a hacer pequeños cambios a las noches y fue asombroso cómo en unos días comenzaron a disminuir los despertares, parecía magia!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "No me podía creer que podía hacer los cambios con tanto cuidado. Inari no lloró en ningún momento, fue todo tan cuidado que para cuando nos dimos cuenta pudimos cambiarle a su habitación y todos comenzamos a descansar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Toda una aventura!! Os puedo asegurar que el haber vivido esos años de sueño me hace empatizar con las familias, se pasa realmente mal.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento aprendí muchísimo y me di cuenta de que muchas familias estaban en nuestra misma situación y podía ayudarles a dormir mejor.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Investigué y leí muchísimo sobre las diferentes formas de entender los procesos del sueño. Finalmente decidí formarme en este ámbito y certificarme como Gentle Sleep Coach (asesora del sueño infantil).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Posteriormente, me forme en alimentación infantil, son dos temas qué van de la mano y necesitaba tener toda la información para dar un servicio integral.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En todo este tiempo he ayudado a cientos de familias a mejorar sus noches, tengo todas las herramientas necesarias para ayudaros y apoyaros en esta etapa de crianza... me encantaría ser vuestra guía en este camino hacia un gran cambio que nunca olvidaréis, estoy segura de que formaremos un gran equipo...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "¿Empezamos?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2391	es	1661
Niri buruz	¡Benetan, abentura bat izan zen!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Alazne naiz, amatasunak eta lorik gabeko gauek haur-loaren aholkulari", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "izatera eraman ninduten.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nire ume zaharrenak, Inarik, 4 urte ditu. Bi urte bete arte ez genuen bi ordu baino gehiago jarraian lo egiten, bularra ematen jarraitzen nuen eskariaren arabera, eta bizirik irauteko ohea partekatzen genuen. Egia esan, biotako inork ez zuen deskantsatzen, eta ni oheratzean baino okerrago esnatzen nintzen", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo gabeko gauak etengabeak direnean, eta hurrengo egunean lan egin behar denean edo haurtxo bat zaindu behar denean, emozionalki eragiten digun oinaze edo amesgaizto bat izan daiteke. Nire kasuan, umetxoarekin egotea nekagarria zen, eta eguneko orduak amaigabeak egiten zitzaizkidan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une hartan, pandemiak harrapatu gintuen, eta nik ez nekien arren, Aia nire neskato txikiarekin haurdun nengoen. Nire gorputzak esaten zidan garaia iritsi zela, eta nire buruak ez zuen gehiago ematen, denok behar genuen lehenbailehen lo egin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Gauetan aldaketa txikiak egiten hasi ginen eta harrigarria izan zen nola egun batzuetan esnatzeak gutxitzen hasi ziren, ¡magia ematen zuen!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ezin nuen sinetsi aldaketak hainbesteko kontuarekin egin nitzakeenik. Inarik ez zuen negarrik inoiz egin, hain kontuz ibili ginen, ezen konturatu ginenerako bere gelara aldatu ahal izan genuen eta denok atseden hartzen hasi ginen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Benetan, abentura bat izan zen!! Ziurta diezazueket lo-urte horiek bizi izanak laguntzen didala enpatia izaten familiekin; izan ere, oso gaizki pasatzen da.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une horretan asko ikasi nuen eta konturatu nintzen familia asko gure egoera berean zeudela eta hobeto lo egiten lagun niezaiekeela.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Asko ikertu eta irakurri nuen loaren prozesuak ulertzeko moduei buruz. Azkenean, arlo horretan trebatzea erabaki nuen, eta Gentle Sleep Coach (haurren loaren aholkularia) egiaztagiria lortu nuen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ondoren, haurren elikaduran trebatu nintzen, eskutik helduta doazen bi gai dira, eta informazio guztia behar nuen zerbitzu integrala emateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Denbora honetan guztian, ehunka familiari lagundu diet beren gauak hobetzen, behar diren tresna guztiak ditut zuei laguntzeko eta ume-hazten ari zaretenean babesa emateko... ikaragarri gustatuko litzaidake zuen gidaria izatea inoiz ahaztuko ez duzuen aldaketa handi baterako bidean, eta ziur nago talde handi bat osatuko dugula...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "Hasiko al gara?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2392	eu	1661
\N	¡Tengo ganas de conocer tu caso! 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "El apego seguro es aquel que se crea cuando las necesidades fisiológicas y emocionales de vuestro peque siempre están atendidas. Si lo hacemos durante el día, dándole cariño, atención y apoyo en todos los momentos, no únicamente en los malos, ¿Cómo no hacerlo a la noche también? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	972	es	830
\N	Zure kasuaren berri izateko irrikitan nago!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Gure txikiaren behar fisiologiko eta emozionalak zaintzen ditugunean, atxikimendu seguru bat lortzen dugu. Guzti hau, egunean zehar lortzen dugu; maitasuna eskeiniz, behar duenean lagunduz, bere babesleku izanda, eta ez bakarrik momentu txarretan. ¿Nola ez dugu ba, gauean ere egingo?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	973	eu	830
\N	Zure kasuaren berri izateko irrikitan nago!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Gure txikiaren behar fisiologiko eta emozionalak zaintzen ditugunean, atxikimendu seguru bat lortzen dugu. Guzti hau, egunean zehar lortzen dugu; maitasuna eskeiniz, behar duenean lagunduz, bere babesleku izanda, eta ez bakarrik momentu txarretan. ¿Nola ez dugu ba, gauean ere egingo?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2284	eu	1607
Servicios	Te ofrezco algo que realmente se adapta a tus necesidades 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué se despierta a los 30-45 min de haberlo acostado?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Sólo se duerme comiendo o en movimiento?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué no puedo dejarlo en la cuna?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Cómo puedo ayudar a mi peque para que duerma durante toda la noche?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Se despierta cada 2 horas?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si te haces alguna o todas estas preguntas, escríbeme, Te aseguro que podemos cambiarlo.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "He creado unos programas que cubren muchas de las situaciones que otros como tú han compartido conmigo, échales un vistazo, y si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Te cuento un poco más, cada programa está diseñado para cubrir unas necesidades diferentes, dependiendo del momento, de la edad, la situación, objetivos y ganas.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2285	es	1608
Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Zergatik esnatzen da oheratu eta 30-45 minutura? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zergatik ezin dut sehaskan utzi? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nola lagundu behar diot nire seme edo alabari gau osoan lo egin dezan?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Galdera hauetakoren bat edo guztiak badituzu, idatzi iezadazu. Ziurtatzen dizut alda ditzakegula.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2286	eu	1608
Mi trabajo	Un poquito más	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cada bebé es muy diferente. Su temperamento, situación, edad, dónde duerme, cómo se duerme... Todo influye, así que no puedo aplicar un único método. Estoy certificada como asesora, pero sobre todo mi experiencia me aporta una visión global de cada caso.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Es normal que no des un paso hacia el cambio por miedo a que el bebé lo pase mal. Pero confia en mi, cuando lo hacemos, es asombroso la capacidad que tienen para adaptarse y sentirás que le has hecho un regalo!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Verle dormir, por fín te hará feliz y disfrutaras de esos momentos. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2287	es	1609
Nire lana	Pixka bat gehiago	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Haur bakoitza oso desberdina da. Beren izaerak, egoerak, adinak, non lo egiten duten, nola lo hartzen duten... Dena eragiten du, beraz, ezin dut metodo bakarra aplikatu. Aholkulari ziurtatua naiz, baina batez ere, nire esperientziak kasu bakoitzaren ikuspegi holistikoa ematen dit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Normala da aldaketa bat egiteko zalantzak izatea haurra haserretzeko beldurrez. Baina sinets iezadazu, egiten dugunean, egokitzeko duten gaitasuna harrigarria da, eta opari bat eman diezula sentituko duzu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Azkenean lo egiten ikusteak zoriontsu egingo zaitu eta une horiek gozatuko dituzu.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2288	eu	1609
Servicios	No dormir de forma continuada nos cambia la forma de vivir la maternidad.	\N	2393	es	1662
Servicios	Te ofrezco algo que realmente se adapta a tus necesidades 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué se despierta a los 30-45 min de haberlo acostado?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Sólo se duerme comiendo o en movimiento?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué no puedo dejarlo en la cuna?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Cómo puedo ayudar a mi peque para que duerma durante toda la noche?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Se despierta cada 2 horas?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si te haces alguna o todas estas preguntas, escríbeme, Te aseguro que podemos cambiarlo.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "He creado unos programas que cubren muchas de las situaciones que otros como tú han compartido conmigo, échales un vistazo, y si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Te cuento un poco más, cada programa está diseñado para cubrir unas necesidades diferentes, dependiendo del momento, de la edad, la situación, objetivos y ganas.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	974	es	831
sobre mí	¡Toda una aventura!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Soy Alazne, la maternidad y las noches sin dormir me llevaron a", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "formarme como asesora de sueño infantil.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mi niño mayor, Inari tiene 4 años. Hasta los dos años no dormíamos más de dos horas seguidas, continuaba dándole pecho a demanda y hacíamos colecho para sobrevivir. Realmente ninguno de los dos descansábamos y yo me despertaba peor de lo que me había acostado.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuando las noches sin dormir son constantes, y al día siguiente hay que trabajar o cuidar de un bebé puede ser un suplicio o una pesadilla que nos afecte emocionalmente. En mi caso, estar con mi bebé era agotador, y las horas del día se me hacían eternas…", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento nos sorprendió la pandemia y aunque yo no lo sabía estaba embarazada de Aia, mi niña pequeña. Mi cuerpo me decía que había llegado el momento y mi mente no daba más de si, todos necesitábamos dormir con urgencia", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Nos pusimos a hacer pequeños cambios a las noches y fue asombroso cómo en unos días comenzaron a disminuir los despertares, parecía magia!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "No me podía creer que podía hacer los cambios con tanto cuidado. Inari no lloró en ningún momento, fue todo tan cuidado que para cuando nos dimos cuenta pudimos cambiarle a su habitación y todos comenzamos a descansar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Toda una aventura!! Os puedo asegurar que el haber vivido esos años de sueño me hace empatizar con las familias, se pasa realmente mal.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento aprendí muchísimo y me di cuenta de que muchas familias estaban en nuestra misma situación y podía ayudarles a dormir mejor.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Investigué y leí muchísimo sobre las diferentes formas de entender los procesos del sueño. Finalmente decidí formarme en este ámbito y certificarme como Gentle Sleep Coach (asesora del sueño infantil).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Posteriormente, me forme en alimentación infantil, son dos temas qué van de la mano y necesitaba tener toda la información para dar un servicio integral.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En todo este tiempo he ayudado a cientos de familias a mejorar sus noches, tengo todas las herramientas necesarias para ayudaros y apoyaros en esta etapa de crianza... me encantaría ser vuestra guía en este camino hacia un gran cambio que nunca olvidaréis, estoy segura de que formaremos un gran equipo...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "¿Empezamos?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	1044	es	876
Niri buruz	¡Benetan, abentura bat izan zen!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Alazne naiz, amatasunak eta lorik gabeko gauek haur-loaren aholkulari", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "izatera eraman ninduten.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nire ume zaharrenak, Inarik, 4 urte ditu. Bi urte bete arte ez genuen bi ordu baino gehiago jarraian lo egiten, bularra ematen jarraitzen nuen eskariaren arabera, eta bizirik irauteko ohea partekatzen genuen. Egia esan, biotako inork ez zuen deskantsatzen, eta ni oheratzean baino okerrago esnatzen nintzen", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo gabeko gauak etengabeak direnean, eta hurrengo egunean lan egin behar denean edo haurtxo bat zaindu behar denean, emozionalki eragiten digun oinaze edo amesgaizto bat izan daiteke. Nire kasuan, umetxoarekin egotea nekagarria zen, eta eguneko orduak amaigabeak egiten zitzaizkidan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une hartan, pandemiak harrapatu gintuen, eta nik ez nekien arren, Aia nire neskato txikiarekin haurdun nengoen. Nire gorputzak esaten zidan garaia iritsi zela, eta nire buruak ez zuen gehiago ematen, denok behar genuen lehenbailehen lo egin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Gauetan aldaketa txikiak egiten hasi ginen eta harrigarria izan zen nola egun batzuetan esnatzeak gutxitzen hasi ziren, ¡magia ematen zuen!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ezin nuen sinetsi aldaketak hainbesteko kontuarekin egin nitzakeenik. Inarik ez zuen negarrik inoiz egin, hain kontuz ibili ginen, ezen konturatu ginenerako bere gelara aldatu ahal izan genuen eta denok atseden hartzen hasi ginen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Benetan, abentura bat izan zen!! Ziurta diezazueket lo-urte horiek bizi izanak laguntzen didala enpatia izaten familiekin; izan ere, oso gaizki pasatzen da.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une horretan asko ikasi nuen eta konturatu nintzen familia asko gure egoera berean zeudela eta hobeto lo egiten lagun niezaiekeela.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Asko ikertu eta irakurri nuen loaren prozesuak ulertzeko moduei buruz. Azkenean, arlo horretan trebatzea erabaki nuen, eta Gentle Sleep Coach (haurren loaren aholkularia) egiaztagiria lortu nuen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ondoren, haurren elikaduran trebatu nintzen, eskutik helduta doazen bi gai dira, eta informazio guztia behar nuen zerbitzu integrala emateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Denbora honetan guztian, ehunka familiari lagundu diet beren gauak hobetzen, behar diren tresna guztiak ditut zuei laguntzeko eta ume-hazten ari zaretenean babesa emateko... ikaragarri gustatuko litzaidake zuen gidaria izatea inoiz ahaztuko ez duzuen aldaketa handi baterako bidean, eta ziur nago talde handi bat osatuko dugula...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "Hasiko al gara?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	1045	eu	876
sobre mí	¡Toda una aventura!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Soy Alazne, la maternidad y las noches sin dormir me llevaron a", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "formarme como asesora de sueño infantil.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mi niño mayor, Inari tiene 4 años. Hasta los dos años no dormíamos más de dos horas seguidas, continuaba dándole pecho a demanda y hacíamos colecho para sobrevivir. Realmente ninguno de los dos descansábamos y yo me despertaba peor de lo que me había acostado.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuando las noches sin dormir son constantes, y al día siguiente hay que trabajar o cuidar de un bebé puede ser un suplicio o una pesadilla que nos afecte emocionalmente. En mi caso, estar con mi bebé era agotador, y las horas del día se me hacían eternas…", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento nos sorprendió la pandemia y aunque yo no lo sabía estaba embarazada de Aia, mi niña pequeña. Mi cuerpo me decía que había llegado el momento y mi mente no daba más de si, todos necesitábamos dormir con urgencia", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Nos pusimos a hacer pequeños cambios a las noches y fue asombroso cómo en unos días comenzaron a disminuir los despertares, parecía magia!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "No me podía creer que podía hacer los cambios con tanto cuidado. Inari no lloró en ningún momento, fue todo tan cuidado que para cuando nos dimos cuenta pudimos cambiarle a su habitación y todos comenzamos a descansar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Toda una aventura!! Os puedo asegurar que el haber vivido esos años de sueño me hace empatizar con las familias, se pasa realmente mal.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento aprendí muchísimo y me di cuenta de que muchas familias estaban en nuestra misma situación y podía ayudarles a dormir mejor.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Investigué y leí muchísimo sobre las diferentes formas de entender los procesos del sueño. Finalmente decidí formarme en este ámbito y certificarme como Gentle Sleep Coach (asesora del sueño infantil).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Posteriormente, me forme en alimentación infantil, son dos temas qué van de la mano y necesitaba tener toda la información para dar un servicio integral.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En todo este tiempo he ayudado a cientos de familias a mejorar sus noches, tengo todas las herramientas necesarias para ayudaros y apoyaros en esta etapa de crianza... me encantaría ser vuestra guía en este camino hacia un gran cambio que nunca olvidaréis, estoy segura de que formaremos un gran equipo...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "¿Empezamos?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	1046	es	877
Niri buruz	¡Benetan, abentura bat izan zen!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Alazne naiz, amatasunak eta lorik gabeko gauek haur-loaren aholkulari", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "izatera eraman ninduten.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nire ume zaharrenak, Inarik, 4 urte ditu. Bi urte bete arte ez genuen bi ordu baino gehiago jarraian lo egiten, bularra ematen jarraitzen nuen eskariaren arabera, eta bizirik irauteko ohea partekatzen genuen. Egia esan, biotako inork ez zuen deskantsatzen, eta ni oheratzean baino okerrago esnatzen nintzen", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo gabeko gauak etengabeak direnean, eta hurrengo egunean lan egin behar denean edo haurtxo bat zaindu behar denean, emozionalki eragiten digun oinaze edo amesgaizto bat izan daiteke. Nire kasuan, umetxoarekin egotea nekagarria zen, eta eguneko orduak amaigabeak egiten zitzaizkidan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une hartan, pandemiak harrapatu gintuen, eta nik ez nekien arren, Aia nire neskato txikiarekin haurdun nengoen. Nire gorputzak esaten zidan garaia iritsi zela, eta nire buruak ez zuen gehiago ematen, denok behar genuen lehenbailehen lo egin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Gauetan aldaketa txikiak egiten hasi ginen eta harrigarria izan zen nola egun batzuetan esnatzeak gutxitzen hasi ziren, ¡magia ematen zuen!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ezin nuen sinetsi aldaketak hainbesteko kontuarekin egin nitzakeenik. Inarik ez zuen negarrik inoiz egin, hain kontuz ibili ginen, ezen konturatu ginenerako bere gelara aldatu ahal izan genuen eta denok atseden hartzen hasi ginen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Benetan, abentura bat izan zen!! Ziurta diezazueket lo-urte horiek bizi izanak laguntzen didala enpatia izaten familiekin; izan ere, oso gaizki pasatzen da.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une horretan asko ikasi nuen eta konturatu nintzen familia asko gure egoera berean zeudela eta hobeto lo egiten lagun niezaiekeela.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Asko ikertu eta irakurri nuen loaren prozesuak ulertzeko moduei buruz. Azkenean, arlo horretan trebatzea erabaki nuen, eta Gentle Sleep Coach (haurren loaren aholkularia) egiaztagiria lortu nuen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ondoren, haurren elikaduran trebatu nintzen, eskutik helduta doazen bi gai dira, eta informazio guztia behar nuen zerbitzu integrala emateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Denbora honetan guztian, ehunka familiari lagundu diet beren gauak hobetzen, behar diren tresna guztiak ditut zuei laguntzeko eta ume-hazten ari zaretenean babesa emateko... ikaragarri gustatuko litzaidake zuen gidaria izatea inoiz ahaztuko ez duzuen aldaketa handi baterako bidean, eta ziur nago talde handi bat osatuko dugula...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "Hasiko al gara?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	1047	eu	877
sobre mí	¡Toda una aventura!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Soy Alazne, la maternidad y las noches sin dormir me llevaron a", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "formarme como asesora de sueño infantil.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mi niño mayor, Inari tiene 4 años. Hasta los dos años no dormíamos más de dos horas seguidas, continuaba dándole pecho a demanda y hacíamos colecho para sobrevivir. Realmente ninguno de los dos descansábamos y yo me despertaba peor de lo que me había acostado.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuando las noches sin dormir son constantes, y al día siguiente hay que trabajar o cuidar de un bebé puede ser un suplicio o una pesadilla que nos afecte emocionalmente. En mi caso, estar con mi bebé era agotador, y las horas del día se me hacían eternas…", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento nos sorprendió la pandemia y aunque yo no lo sabía estaba embarazada de Aia, mi niña pequeña. Mi cuerpo me decía que había llegado el momento y mi mente no daba más de si, todos necesitábamos dormir con urgencia", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Nos pusimos a hacer pequeños cambios a las noches y fue asombroso cómo en unos días comenzaron a disminuir los despertares, parecía magia!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "No me podía creer que podía hacer los cambios con tanto cuidado. Inari no lloró en ningún momento, fue todo tan cuidado que para cuando nos dimos cuenta pudimos cambiarle a su habitación y todos comenzamos a descansar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Toda una aventura!! Os puedo asegurar que el haber vivido esos años de sueño me hace empatizar con las familias, se pasa realmente mal.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento aprendí muchísimo y me di cuenta de que muchas familias estaban en nuestra misma situación y podía ayudarles a dormir mejor.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Investigué y leí muchísimo sobre las diferentes formas de entender los procesos del sueño. Finalmente decidí formarme en este ámbito y certificarme como Gentle Sleep Coach (asesora del sueño infantil).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Posteriormente, me forme en alimentación infantil, son dos temas qué van de la mano y necesitaba tener toda la información para dar un servicio integral.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En todo este tiempo he ayudado a cientos de familias a mejorar sus noches, tengo todas las herramientas necesarias para ayudaros y apoyaros en esta etapa de crianza... me encantaría ser vuestra guía en este camino hacia un gran cambio que nunca olvidaréis, estoy segura de que formaremos un gran equipo...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "¿Empezamos?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	1048	es	878
Zerbitzuak	Jarraituki lo ez egiteak amatasuna bizitzeko modua aldatzen digu. 	\N	2394	eu	1662
Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Zergatik esnatzen da oheratu eta 30-45 minutura? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zergatik ezin dut sehaskan utzi? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nola lagundu behar diot nire seme edo alabari gau osoan lo egin dezan?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Galdera hauetakoren bat edo guztiak badituzu, idatzi iezadazu. Ziurtatzen dizut alda ditzakegula.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	975	eu	831
Mi trabajo	Un poquito más	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cada bebé es muy diferente. Su temperamento, situación, edad, dónde duerme, cómo se duerme... Todo influye, así que no puedo aplicar un único método. Estoy certificada como asesora, pero sobre todo mi experiencia me aporta una visión global de cada caso.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Es normal que no des un paso hacia el cambio por miedo a que el bebé lo pase mal. Pero confia en mi, cuando lo hacemos, es asombroso la capacidad que tienen para adaptarse y sentirás que le has hecho un regalo!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Verle dormir, por fín te hará feliz y disfrutaras de esos momentos. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	976	es	832
Nire lana	Pixka bat gehiago	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Haur bakoitza oso desberdina da. Beren izaerak, egoerak, adinak, non lo egiten duten, nola lo hartzen duten... Dena eragiten du, beraz, ezin dut metodo bakarra aplikatu. Aholkulari ziurtatua naiz, baina batez ere, nire esperientziak kasu bakoitzaren ikuspegi holistikoa ematen dit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Normala da aldaketa bat egiteko zalantzak izatea haurra haserretzeko beldurrez. Baina sinets iezadazu, egiten dugunean, egokitzeko duten gaitasuna harrigarria da, eta opari bat eman diezula sentituko duzu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Azkenean lo egiten ikusteak zoriontsu egingo zaitu eta une horiek gozatuko dituzu.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	977	eu	832
Niri buruz	¡Benetan, abentura bat izan zen!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Alazne naiz, amatasunak eta lorik gabeko gauek haur-loaren aholkulari", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "izatera eraman ninduten.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nire ume zaharrenak, Inarik, 4 urte ditu. Bi urte bete arte ez genuen bi ordu baino gehiago jarraian lo egiten, bularra ematen jarraitzen nuen eskariaren arabera, eta bizirik irauteko ohea partekatzen genuen. Egia esan, biotako inork ez zuen deskantsatzen, eta ni oheratzean baino okerrago esnatzen nintzen", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo gabeko gauak etengabeak direnean, eta hurrengo egunean lan egin behar denean edo haurtxo bat zaindu behar denean, emozionalki eragiten digun oinaze edo amesgaizto bat izan daiteke. Nire kasuan, umetxoarekin egotea nekagarria zen, eta eguneko orduak amaigabeak egiten zitzaizkidan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une hartan, pandemiak harrapatu gintuen, eta nik ez nekien arren, Aia nire neskato txikiarekin haurdun nengoen. Nire gorputzak esaten zidan garaia iritsi zela, eta nire buruak ez zuen gehiago ematen, denok behar genuen lehenbailehen lo egin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Gauetan aldaketa txikiak egiten hasi ginen eta harrigarria izan zen nola egun batzuetan esnatzeak gutxitzen hasi ziren, ¡magia ematen zuen!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ezin nuen sinetsi aldaketak hainbesteko kontuarekin egin nitzakeenik. Inarik ez zuen negarrik inoiz egin, hain kontuz ibili ginen, ezen konturatu ginenerako bere gelara aldatu ahal izan genuen eta denok atseden hartzen hasi ginen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Benetan, abentura bat izan zen!! Ziurta diezazueket lo-urte horiek bizi izanak laguntzen didala enpatia izaten familiekin; izan ere, oso gaizki pasatzen da.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une horretan asko ikasi nuen eta konturatu nintzen familia asko gure egoera berean zeudela eta hobeto lo egiten lagun niezaiekeela.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Asko ikertu eta irakurri nuen loaren prozesuak ulertzeko moduei buruz. Azkenean, arlo horretan trebatzea erabaki nuen, eta Gentle Sleep Coach (haurren loaren aholkularia) egiaztagiria lortu nuen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ondoren, haurren elikaduran trebatu nintzen, eskutik helduta doazen bi gai dira, eta informazio guztia behar nuen zerbitzu integrala emateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Denbora honetan guztian, ehunka familiari lagundu diet beren gauak hobetzen, behar diren tresna guztiak ditut zuei laguntzeko eta ume-hazten ari zaretenean babesa emateko... ikaragarri gustatuko litzaidake zuen gidaria izatea inoiz ahaztuko ez duzuen aldaketa handi baterako bidean, eta ziur nago talde handi bat osatuko dugula...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "Hasiko al gara?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	1049	eu	878
sobre mí	¡Toda una aventura!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Soy Alazne, la maternidad y las noches sin dormir me llevaron a", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "formarme como asesora de sueño infantil.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mi niño mayor, Inari tiene 4 años. Hasta los dos años no dormíamos más de dos horas seguidas, continuaba dándole pecho a demanda y hacíamos colecho para sobrevivir. Realmente ninguno de los dos descansábamos y yo me despertaba peor de lo que me había acostado.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuando las noches sin dormir son constantes, y al día siguiente hay que trabajar o cuidar de un bebé puede ser un suplicio o una pesadilla que nos afecte emocionalmente. En mi caso, estar con mi bebé era agotador, y las horas del día se me hacían eternas…", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento nos sorprendió la pandemia y aunque yo no lo sabía estaba embarazada de Aia, mi niña pequeña. Mi cuerpo me decía que había llegado el momento y mi mente no daba más de si, todos necesitábamos dormir con urgencia", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Nos pusimos a hacer pequeños cambios a las noches y fue asombroso cómo en unos días comenzaron a disminuir los despertares, parecía magia!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "No me podía creer que podía hacer los cambios con tanto cuidado. Inari no lloró en ningún momento, fue todo tan cuidado que para cuando nos dimos cuenta pudimos cambiarle a su habitación y todos comenzamos a descansar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Toda una aventura!! Os puedo asegurar que el haber vivido esos años de sueño me hace empatizar con las familias, se pasa realmente mal.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento aprendí muchísimo y me di cuenta de que muchas familias estaban en nuestra misma situación y podía ayudarles a dormir mejor.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Investigué y leí muchísimo sobre las diferentes formas de entender los procesos del sueño. Finalmente decidí formarme en este ámbito y certificarme como Gentle Sleep Coach (asesora del sueño infantil).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Posteriormente, me forme en alimentación infantil, son dos temas qué van de la mano y necesitaba tener toda la información para dar un servicio integral.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En todo este tiempo he ayudado a cientos de familias a mejorar sus noches, tengo todas las herramientas necesarias para ayudaros y apoyaros en esta etapa de crianza... me encantaría ser vuestra guía en este camino hacia un gran cambio que nunca olvidaréis, estoy segura de que formaremos un gran equipo...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "¿Empezamos?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2289	es	1610
Niri buruz	¡Benetan, abentura bat izan zen!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Alazne naiz, amatasunak eta lorik gabeko gauek haur-loaren aholkulari", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "izatera eraman ninduten.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nire ume zaharrenak, Inarik, 4 urte ditu. Bi urte bete arte ez genuen bi ordu baino gehiago jarraian lo egiten, bularra ematen jarraitzen nuen eskariaren arabera, eta bizirik irauteko ohea partekatzen genuen. Egia esan, biotako inork ez zuen deskantsatzen, eta ni oheratzean baino okerrago esnatzen nintzen", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo gabeko gauak etengabeak direnean, eta hurrengo egunean lan egin behar denean edo haurtxo bat zaindu behar denean, emozionalki eragiten digun oinaze edo amesgaizto bat izan daiteke. Nire kasuan, umetxoarekin egotea nekagarria zen, eta eguneko orduak amaigabeak egiten zitzaizkidan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une hartan, pandemiak harrapatu gintuen, eta nik ez nekien arren, Aia nire neskato txikiarekin haurdun nengoen. Nire gorputzak esaten zidan garaia iritsi zela, eta nire buruak ez zuen gehiago ematen, denok behar genuen lehenbailehen lo egin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Gauetan aldaketa txikiak egiten hasi ginen eta harrigarria izan zen nola egun batzuetan esnatzeak gutxitzen hasi ziren, ¡magia ematen zuen!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ezin nuen sinetsi aldaketak hainbesteko kontuarekin egin nitzakeenik. Inarik ez zuen negarrik inoiz egin, hain kontuz ibili ginen, ezen konturatu ginenerako bere gelara aldatu ahal izan genuen eta denok atseden hartzen hasi ginen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Benetan, abentura bat izan zen!! Ziurta diezazueket lo-urte horiek bizi izanak laguntzen didala enpatia izaten familiekin; izan ere, oso gaizki pasatzen da.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une horretan asko ikasi nuen eta konturatu nintzen familia asko gure egoera berean zeudela eta hobeto lo egiten lagun niezaiekeela.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Asko ikertu eta irakurri nuen loaren prozesuak ulertzeko moduei buruz. Azkenean, arlo horretan trebatzea erabaki nuen, eta Gentle Sleep Coach (haurren loaren aholkularia) egiaztagiria lortu nuen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ondoren, haurren elikaduran trebatu nintzen, eskutik helduta doazen bi gai dira, eta informazio guztia behar nuen zerbitzu integrala emateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Denbora honetan guztian, ehunka familiari lagundu diet beren gauak hobetzen, behar diren tresna guztiak ditut zuei laguntzeko eta ume-hazten ari zaretenean babesa emateko... ikaragarri gustatuko litzaidake zuen gidaria izatea inoiz ahaztuko ez duzuen aldaketa handi baterako bidean, eta ziur nago talde handi bat osatuko dugula...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "Hasiko al gara?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2290	eu	1610
sobre mí	¡Toda una aventura!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Soy Alazne, la maternidad y las noches sin dormir me llevaron a", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "formarme como asesora de sueño infantil.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mi niño mayor, Inari tiene 4 años. Hasta los dos años no dormíamos más de dos horas seguidas, continuaba dándole pecho a demanda y hacíamos colecho para sobrevivir. Realmente ninguno de los dos descansábamos y yo me despertaba peor de lo que me había acostado.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuando las noches sin dormir son constantes, y al día siguiente hay que trabajar o cuidar de un bebé puede ser un suplicio o una pesadilla que nos afecte emocionalmente. En mi caso, estar con mi bebé era agotador, y las horas del día se me hacían eternas…", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento nos sorprendió la pandemia y aunque yo no lo sabía estaba embarazada de Aia, mi niña pequeña. Mi cuerpo me decía que había llegado el momento y mi mente no daba más de si, todos necesitábamos dormir con urgencia", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Nos pusimos a hacer pequeños cambios a las noches y fue asombroso cómo en unos días comenzaron a disminuir los despertares, parecía magia!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "No me podía creer que podía hacer los cambios con tanto cuidado. Inari no lloró en ningún momento, fue todo tan cuidado que para cuando nos dimos cuenta pudimos cambiarle a su habitación y todos comenzamos a descansar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Toda una aventura!! Os puedo asegurar que el haber vivido esos años de sueño me hace empatizar con las familias, se pasa realmente mal.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento aprendí muchísimo y me di cuenta de que muchas familias estaban en nuestra misma situación y podía ayudarles a dormir mejor.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Investigué y leí muchísimo sobre las diferentes formas de entender los procesos del sueño. Finalmente decidí formarme en este ámbito y certificarme como Gentle Sleep Coach (asesora del sueño infantil).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Posteriormente, me forme en alimentación infantil, son dos temas qué van de la mano y necesitaba tener toda la información para dar un servicio integral.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En todo este tiempo he ayudado a cientos de familias a mejorar sus noches, tengo todas las herramientas necesarias para ayudaros y apoyaros en esta etapa de crianza... me encantaría ser vuestra guía en este camino hacia un gran cambio que nunca olvidaréis, estoy segura de que formaremos un gran equipo...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "¿Empezamos?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2291	es	1611
Niri buruz	¡Benetan, abentura bat izan zen!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Alazne naiz, amatasunak eta lorik gabeko gauek haur-loaren aholkulari", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "izatera eraman ninduten.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nire ume zaharrenak, Inarik, 4 urte ditu. Bi urte bete arte ez genuen bi ordu baino gehiago jarraian lo egiten, bularra ematen jarraitzen nuen eskariaren arabera, eta bizirik irauteko ohea partekatzen genuen. Egia esan, biotako inork ez zuen deskantsatzen, eta ni oheratzean baino okerrago esnatzen nintzen", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo gabeko gauak etengabeak direnean, eta hurrengo egunean lan egin behar denean edo haurtxo bat zaindu behar denean, emozionalki eragiten digun oinaze edo amesgaizto bat izan daiteke. Nire kasuan, umetxoarekin egotea nekagarria zen, eta eguneko orduak amaigabeak egiten zitzaizkidan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une hartan, pandemiak harrapatu gintuen, eta nik ez nekien arren, Aia nire neskato txikiarekin haurdun nengoen. Nire gorputzak esaten zidan garaia iritsi zela, eta nire buruak ez zuen gehiago ematen, denok behar genuen lehenbailehen lo egin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Gauetan aldaketa txikiak egiten hasi ginen eta harrigarria izan zen nola egun batzuetan esnatzeak gutxitzen hasi ziren, ¡magia ematen zuen!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ezin nuen sinetsi aldaketak hainbesteko kontuarekin egin nitzakeenik. Inarik ez zuen negarrik inoiz egin, hain kontuz ibili ginen, ezen konturatu ginenerako bere gelara aldatu ahal izan genuen eta denok atseden hartzen hasi ginen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Benetan, abentura bat izan zen!! Ziurta diezazueket lo-urte horiek bizi izanak laguntzen didala enpatia izaten familiekin; izan ere, oso gaizki pasatzen da.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une horretan asko ikasi nuen eta konturatu nintzen familia asko gure egoera berean zeudela eta hobeto lo egiten lagun niezaiekeela.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Asko ikertu eta irakurri nuen loaren prozesuak ulertzeko moduei buruz. Azkenean, arlo horretan trebatzea erabaki nuen, eta Gentle Sleep Coach (haurren loaren aholkularia) egiaztagiria lortu nuen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ondoren, haurren elikaduran trebatu nintzen, eskutik helduta doazen bi gai dira, eta informazio guztia behar nuen zerbitzu integrala emateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Denbora honetan guztian, ehunka familiari lagundu diet beren gauak hobetzen, behar diren tresna guztiak ditut zuei laguntzeko eta ume-hazten ari zaretenean babesa emateko... ikaragarri gustatuko litzaidake zuen gidaria izatea inoiz ahaztuko ez duzuen aldaketa handi baterako bidean, eta ziur nago talde handi bat osatuko dugula...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "Hasiko al gara?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2292	eu	1611
sobre mí	¡Toda una aventura!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Soy Alazne, la maternidad y las noches sin dormir me llevaron a", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "formarme como asesora de sueño infantil.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mi niño mayor, Inari tiene 4 años. Hasta los dos años no dormíamos más de dos horas seguidas, continuaba dándole pecho a demanda y hacíamos colecho para sobrevivir. Realmente ninguno de los dos descansábamos y yo me despertaba peor de lo que me había acostado.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuando las noches sin dormir son constantes, y al día siguiente hay que trabajar o cuidar de un bebé puede ser un suplicio o una pesadilla que nos afecte emocionalmente. En mi caso, estar con mi bebé era agotador, y las horas del día se me hacían eternas…", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento nos sorprendió la pandemia y aunque yo no lo sabía estaba embarazada de Aia, mi niña pequeña. Mi cuerpo me decía que había llegado el momento y mi mente no daba más de si, todos necesitábamos dormir con urgencia", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Nos pusimos a hacer pequeños cambios a las noches y fue asombroso cómo en unos días comenzaron a disminuir los despertares, parecía magia!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "No me podía creer que podía hacer los cambios con tanto cuidado. Inari no lloró en ningún momento, fue todo tan cuidado que para cuando nos dimos cuenta pudimos cambiarle a su habitación y todos comenzamos a descansar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Toda una aventura!! Os puedo asegurar que el haber vivido esos años de sueño me hace empatizar con las familias, se pasa realmente mal.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento aprendí muchísimo y me di cuenta de que muchas familias estaban en nuestra misma situación y podía ayudarles a dormir mejor.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Investigué y leí muchísimo sobre las diferentes formas de entender los procesos del sueño. Finalmente decidí formarme en este ámbito y certificarme como Gentle Sleep Coach (asesora del sueño infantil).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Posteriormente, me forme en alimentación infantil, son dos temas qué van de la mano y necesitaba tener toda la información para dar un servicio integral.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En todo este tiempo he ayudado a cientos de familias a mejorar sus noches, tengo todas las herramientas necesarias para ayudaros y apoyaros en esta etapa de crianza... me encantaría ser vuestra guía en este camino hacia un gran cambio que nunca olvidaréis, estoy segura de que formaremos un gran equipo...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "¿Empezamos?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2293	es	1612
Niri buruz	¡Benetan, abentura bat izan zen!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Alazne naiz, amatasunak eta lorik gabeko gauek haur-loaren aholkulari", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "izatera eraman ninduten.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nire ume zaharrenak, Inarik, 4 urte ditu. Bi urte bete arte ez genuen bi ordu baino gehiago jarraian lo egiten, bularra ematen jarraitzen nuen eskariaren arabera, eta bizirik irauteko ohea partekatzen genuen. Egia esan, biotako inork ez zuen deskantsatzen, eta ni oheratzean baino okerrago esnatzen nintzen", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo gabeko gauak etengabeak direnean, eta hurrengo egunean lan egin behar denean edo haurtxo bat zaindu behar denean, emozionalki eragiten digun oinaze edo amesgaizto bat izan daiteke. Nire kasuan, umetxoarekin egotea nekagarria zen, eta eguneko orduak amaigabeak egiten zitzaizkidan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une hartan, pandemiak harrapatu gintuen, eta nik ez nekien arren, Aia nire neskato txikiarekin haurdun nengoen. Nire gorputzak esaten zidan garaia iritsi zela, eta nire buruak ez zuen gehiago ematen, denok behar genuen lehenbailehen lo egin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Gauetan aldaketa txikiak egiten hasi ginen eta harrigarria izan zen nola egun batzuetan esnatzeak gutxitzen hasi ziren, ¡magia ematen zuen!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ezin nuen sinetsi aldaketak hainbesteko kontuarekin egin nitzakeenik. Inarik ez zuen negarrik inoiz egin, hain kontuz ibili ginen, ezen konturatu ginenerako bere gelara aldatu ahal izan genuen eta denok atseden hartzen hasi ginen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Benetan, abentura bat izan zen!! Ziurta diezazueket lo-urte horiek bizi izanak laguntzen didala enpatia izaten familiekin; izan ere, oso gaizki pasatzen da.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une horretan asko ikasi nuen eta konturatu nintzen familia asko gure egoera berean zeudela eta hobeto lo egiten lagun niezaiekeela.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Asko ikertu eta irakurri nuen loaren prozesuak ulertzeko moduei buruz. Azkenean, arlo horretan trebatzea erabaki nuen, eta Gentle Sleep Coach (haurren loaren aholkularia) egiaztagiria lortu nuen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ondoren, haurren elikaduran trebatu nintzen, eskutik helduta doazen bi gai dira, eta informazio guztia behar nuen zerbitzu integrala emateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Denbora honetan guztian, ehunka familiari lagundu diet beren gauak hobetzen, behar diren tresna guztiak ditut zuei laguntzeko eta ume-hazten ari zaretenean babesa emateko... ikaragarri gustatuko litzaidake zuen gidaria izatea inoiz ahaztuko ez duzuen aldaketa handi baterako bidean, eta ziur nago talde handi bat osatuko dugula...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "Hasiko al gara?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2294	eu	1612
\N	Amets plana nirekin baina zuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zerbitzu hau nire jarraipenarekin eskeitzen dudan planaren antzekoa da. Zuen kasua aztertuko dut, bideodei batean azalduko dizuet eta idatziko plan bat garatuko dut. Desberdintasuna jarraipenean datza.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Batzuetan ez da beharrezkoa egunero-egunero harremanetan egotea eta astean bitan dei bat eginez familia hobeto moldatzen da. Beti egongo naiz zuei laguntzeko prest, hau da, edozein momentutan hitzegin behar baduzue: zuen sentimenduei buruz, galderak, dudak edo beste edozer buruz, hortxe izango nauzue. Kasu honetan ere 3-4 astetan egongo gara elkarrekin aldaketak pixkanaka, txikiak behar duen arabera, aurrera eramateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera ondotzat ematen dugunean, azkeneko bideodei bat egingo dugu, etorkizunean gertatu daitezkeen egoerei nola aurre egin eta zuen zalantzak argitzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 295(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2374	eu	1652
\N	Plan a vuestro ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero… Si te encuentras con ganas, aún no has llegado al agotamiento total y te queda algo de energía para hacerlo por tu cuenta, entonces puedes elegir un plan sin seguimiento.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En este caso, también os enviaré un cuestionario inicial para poder estudiar el caso en detalle. Al recibirlo haremos una videollamada para explicaros hasta la última puntilla de cómo llevarlo a cabo, paso a paso y os lo enviaré todo todito por escrito.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Siempre tendréis la opción de contratar el seguimiento. Si no podéis avanzar, os habéis bloqueado, agotado, tenéis dudas… tenéis la opción de solicitar una llamada para reconducir o ayudaros en el punto que estéis, (25 euros).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Consulta de una hora (presencial, por teléfono o por zoom), para explicar el plan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Envío de plan de sueño.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Podréis enviarme un email en un plazo de un mes con las dudas que os puedan surgir al poner en marcha el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}], "direction": null, "textFormat": 1}}	2375	es	1653
\N	 Plana zeuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baina...gogoz bazaude, oraindik ez bazara erabat agortu eta energia pixka bat geratzen bazaizu zure kabuz egiteko; orduan, jarraipenik gabeko plan bat aukera dezakezu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Kasu horretan ere hasierako galdetegi bat bidaliko dizuet, kasua zehatz-mehatz aztertu ahal izateko. Jasotzean, bideo-dei bat egingo dugu, prozesua zehatz-mehatz azaltzeko, urratsez urrats, eta den-dena idatziz bidaliko dizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Beti izango duzue jarraipena kontratatzeko aukera. Ezin baduzue aurrera egin, blokeatu bazarete, edo agortu bazarete, edo zalantzak badituzue...aukera daukazue dei bat eskatzeko, zaudeten puntutik aurrera prozesua birbideratzeko edo aurrera egiten laguntzeko (25 euro).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubeteko kontsulta (aurrez aurrekoa, telefonoz edo zoom bidez), plana azaltzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo-plana bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "E-mail bat bidali ahal izango didazue hilabeteko epean, plana abian jartzean sor dakizkizuekeen zalantzekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 100(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2376	eu	1653
Servicios	No dormir de forma continuada nos cambia la forma de vivir la maternidad.	\N	2295	es	1613
Zerbitzuak	Jarraituki lo ez egiteak amatasuna bizitzeko modua aldatzen digu. 	\N	2296	eu	1613
Mi Trabajo	Consultas	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Esta opción encajará con lo que necesitas si no quieres o no crees que necesites un plan detallado por escrito. En este caso no te enviaré un plan de sueño personalizado, pero si una guía de sueño que te servirá de guía.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hablaremos durante una hora y pondremos sobre la mesa todas tus dudas. Por mi parte te explicaré qué podéis hacer paso a paso para mejorar vuestras noches. Te recomiendo que tengas listo boli y papel para poder anotar lo más importante. Para sacar más provecho a esta videollamada, te enviaré un cuestionario previo para saber qué temas os gustaría tratar y tener información en general sobre vuestra situación actual.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Después de hacer la llamada podríais enviarme un email con alguna duda que quedase pendiente de resolver o algo que te gustaría consultar tras poner en práctica lo hablado en la llamada.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si en el plazo de un mes, aún necesitas más ayuda, podrás pagar la diferencia y tener un plan completo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2395	es	1663
Nire lana	Kontsultak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Aukera hau bat etorriko da behar duzunarekin, baldin eta ez baduzu nahi edo ez baduzu uste idatzizko plan zehatz bat behar duzunik. Kasu horretan ez dizut bidaliko lo-plan pertsonalizatu bat, baina gida gisa balioko dizun lo-gida bat bai.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubetez hitz egingo dugu eta zure zalantza guztiak mahai gainean jarriko ditugu. Nik azalduko dizut zer egin dezakezuen pausoz pauso zuen gauak hobetzeko. Boligrafoa eta papera prest izatea gomendatzen dizut, garrantzitsuena idatzi ahal izateko. Bideo-dei honi etekin handiagoa ateratzeko, aldez aurretik galdetegi bat bidaliko dizut, zer gai jorratu nahiko zenituzketen jakiteko eta, oro har, zuen egungo egoerari buruzko informazioa izateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Deia egin ondoren, mezu elektroniko bat bidal zeniezadakete, argitu gabe dagoen zalantzaren batekin edo deian hitz egindakoa praktikan jarri ondoren kontsultatu nahiko zenukeen zerbaitekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baldin eta hilabeteko epean laguntza gehiago behar baduzu, aldea ordaindu eta plan oso bat eduki ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 70(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2396	eu	1663
\N	Plan de sueño personalizado con seguimiento	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si tu bebé tiene más de 6 meses y necesitas volver a descansar, te encuentras agotada y sin ánimo de llevarlo por tu cuenta este es el plan que necesitas. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Necesito estudiar vuestro caso con todos los detalles, para diseñar un plan personalizado y ajustarnos al máximos a vuestros objetivos, para eso os enviaré un cuestionario. Tras recibir vuestra respuesta al cuestionario, estableceremos una primera consulta tras la cual definiré un plan, os lo expondré en una videollamada, lo compartiremos y daremos las últimas pinceladas juntos. Si estáis de acuerdo, os lo enviaré todo por escrito y fijaremos un día para comenzar el camino. Os apoyaré en todo el proceso y haré un seguimiento diario durante 3 o 4 semanas. Si queremos adaptarnos al bebé no podemos marcar una fecha exacta. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El seguimiento será vía correo o whatsapp, estaremos en contacto diariamente y siempre que lo necesitéis citaremos una llamada. Una vez finalizado el seguimiento y haber logrado vuestros objetivos haremos una llamada y os enviaré un documento con pautas para futuras situaciones.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Consulta por videollamada para preserntar el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Plan de sueño por escrito para vuestra familia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Seguimiento durante 3 o 4semanas, diario por email o Whatsapp", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Resolución de dudas", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Conclusiones: Un resumen del proceso que habremos llevado a cabo y envío de un documento con recomendaciones para el futuro. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2397	es	1664
Mi Trabajo	Consultas	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Esta opción encajará con lo que necesitas si no quieres o no crees que necesites un plan detallado por escrito. En este caso no te enviaré un plan de sueño personalizado, pero si una guía de sueño que te servirá de guía.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hablaremos durante una hora y pondremos sobre la mesa todas tus dudas. Por mi parte te explicaré qué podéis hacer paso a paso para mejorar vuestras noches. Te recomiendo que tengas listo boli y papel para poder anotar lo más importante. Para sacar más provecho a esta videollamada, te enviaré un cuestionario previo para saber qué temas os gustaría tratar y tener información en general sobre vuestra situación actual.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Después de hacer la llamada podríais enviarme un email con alguna duda que quedase pendiente de resolver o algo que te gustaría consultar tras poner en práctica lo hablado en la llamada.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si en el plazo de un mes, aún necesitas más ayuda, podrás pagar la diferencia y tener un plan completo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2297	es	1614
Nire lana	Kontsultak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Aukera hau bat etorriko da behar duzunarekin, baldin eta ez baduzu nahi edo ez baduzu uste idatzizko plan zehatz bat behar duzunik. Kasu horretan ez dizut bidaliko lo-plan pertsonalizatu bat, baina gida gisa balioko dizun lo-gida bat bai.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubetez hitz egingo dugu eta zure zalantza guztiak mahai gainean jarriko ditugu. Nik azalduko dizut zer egin dezakezuen pausoz pauso zuen gauak hobetzeko. Boligrafoa eta papera prest izatea gomendatzen dizut, garrantzitsuena idatzi ahal izateko. Bideo-dei honi etekin handiagoa ateratzeko, aldez aurretik galdetegi bat bidaliko dizut, zer gai jorratu nahiko zenituzketen jakiteko eta, oro har, zuen egungo egoerari buruzko informazioa izateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Deia egin ondoren, mezu elektroniko bat bidal zeniezadakete, argitu gabe dagoen zalantzaren batekin edo deian hitz egindakoa praktikan jarri ondoren kontsultatu nahiko zenukeen zerbaitekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baldin eta hilabeteko epean laguntza gehiago behar baduzu, aldea ordaindu eta plan oso bat eduki ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 70(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2298	eu	1614
\N	Lo-plan pertsonalizatua, eta jarraipenarekin	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure haurtxoak 6 hilabete baino gehiago baditu eta berriro atseden hartzeko beharra baduzu, leher eginda bazaude eta zeure kabuz eramateko adorerik gabe, hauxe da behar duzun plana. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen kasua xehetasun guztiekin aztertu behar dut, plan pertsonalizatu bat diseinatzeko eta zuen helburuetara ahalik eta gehien egokitzeko. Horretarako, galdetegi bat bidaliko dizuet. Galdera- sortaren erantzuna jaso ondoren, lehenengo kontsulta bat ezarriko dugu, eta horren ondoren plan bat definituko dut, bideo-dei batean azalduko dizuet, partekatu egingo dugu eta azken zertzeladak elkarrekin emango ditugu. Ados bazaudete, dena idatziz bidaliko dizuet eta egun bat finkatuko dugu bideari ekiteko. Prozesu osoan lagunduko dizuet eta egunero jarraipena egingo dut 3 edo 4 astez. Jarraipena posta edo whatsapp bidez egingo da, egunero egongo gara", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "harremanetan eta behar duzuen guztietan dei bat egingo dugu. Jarraipena amaiturik eta zuen helburuak lortuta, dei bat egingo dugu eta dokumentu bat bidaliko dizuet etorkizuneko egoeretarako jarraibideekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- bideo-dei bidezko kontsulta, plana azaltzeko", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Idatzizko lo-plan pertsonalizatua zuen familiarentzat.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Jarraipena 3 do astez, egunero posta elektronikoz edo Whatsapp bidez", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zalantzak argitzea", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Ondorioak: egingo dugun prozesuaren laburpena, eta etorkizunerako gomendioak jasotzen dituen dokumentu bat bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 340(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2398	eu	1664
\N	Plan de sueño conmigo, pero a tu ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En un inicio este plan es similar a un plan con mi seguimiento: Haré una valoración previa, un estudio, haremos una videollamada y detallaré el plan de sueño acorde a vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero, a veces no es necesario estar en contacto diario. En ese caso, haremos una llamada 2 veces por semana durante 4 semanas; Veremos la situación, los avances, como continuar… Todo al detalle y vosotros lo iréis poniendo en práctica a vuestro ritmo. Eso sí, siempre que lo necesitéis podéis escribirme con vuestras dudas, sentimientos, avances o lo que queráis contarme. Yo seguiré muy cerquita para todo lo que necesitéis.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Y antes de finalizar el plan, haremos otra videollamada para hablar de la situación final, posibles dudas y os daré algunos tips para el futuro.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2399	es	1665
\N	Amets plana nirekin baina zuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zerbitzu hau nire jarraipenarekin eskeitzen dudan planaren antzekoa da. Zuen kasua aztertuko dut, bideodei batean azalduko dizuet eta idatziko plan bat garatuko dut. Desberdintasuna jarraipenean datza.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Batzuetan ez da beharrezkoa egunero-egunero harremanetan egotea eta astean bitan dei bat eginez familia hobeto moldatzen da. Beti egongo naiz zuei laguntzeko prest, hau da, edozein momentutan hitzegin behar baduzue: zuen sentimenduei buruz, galderak, dudak edo beste edozer buruz, hortxe izango nauzue. Kasu honetan ere 3-4 astetan egongo gara elkarrekin aldaketak pixkanaka, txikiak behar duen arabera, aurrera eramateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera ondotzat ematen dugunean, azkeneko bideodei bat egingo dugu, etorkizunean gertatu daitezkeen egoerei nola aurre egin eta zuen zalantzak argitzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 295(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2400	eu	1665
\N	Plan a vuestro ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero… Si te encuentras con ganas, aún no has llegado al agotamiento total y te queda algo de energía para hacerlo por tu cuenta, entonces puedes elegir un plan sin seguimiento.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En este caso, también os enviaré un cuestionario inicial para poder estudiar el caso en detalle. Al recibirlo haremos una videollamada para explicaros hasta la última puntilla de cómo llevarlo a cabo, paso a paso y os lo enviaré todo todito por escrito.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Siempre tendréis la opción de contratar el seguimiento. Si no podéis avanzar, os habéis bloqueado, agotado, tenéis dudas… tenéis la opción de solicitar una llamada para reconducir o ayudaros en el punto que estéis, (25 euros).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Consulta de una hora (presencial, por teléfono o por zoom), para explicar el plan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Envío de plan de sueño.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Podréis enviarme un email en un plazo de un mes con las dudas que os puedan surgir al poner en marcha el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}], "direction": null, "textFormat": 1}}	2401	es	1666
\N	Plan de sueño personalizado con seguimiento	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si tu bebé tiene más de 6 meses y necesitas volver a descansar, te encuentras agotada y sin ánimo de llevarlo por tu cuenta este es el plan que necesitas. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Necesito estudiar vuestro caso con todos los detalles, para diseñar un plan personalizado y ajustarnos al máximos a vuestros objetivos, para eso os enviaré un cuestionario. Tras recibir vuestra respuesta al cuestionario, estableceremos una primera consulta tras la cual definiré un plan, os lo expondré en una videollamada, lo compartiremos y daremos las últimas pinceladas juntos. Si estáis de acuerdo, os lo enviaré todo por escrito y fijaremos un día para comenzar el camino. Os apoyaré en todo el proceso y haré un seguimiento diario durante 3 o 4 semanas. Si queremos adaptarnos al bebé no podemos marcar una fecha exacta. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El seguimiento será vía correo o whatsapp, estaremos en contacto diariamente y siempre que lo necesitéis citaremos una llamada. Una vez finalizado el seguimiento y haber logrado vuestros objetivos haremos una llamada y os enviaré un documento con pautas para futuras situaciones.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Consulta por videollamada para preserntar el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Plan de sueño por escrito para vuestra familia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Seguimiento durante 3 o 4semanas, diario por email o Whatsapp", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Resolución de dudas", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Conclusiones: Un resumen del proceso que habremos llevado a cabo y envío de un documento con recomendaciones para el futuro. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2299	es	1615
\N	Lo-plan pertsonalizatua, eta jarraipenarekin	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure haurtxoak 6 hilabete baino gehiago baditu eta berriro atseden hartzeko beharra baduzu, leher eginda bazaude eta zeure kabuz eramateko adorerik gabe, hauxe da behar duzun plana. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen kasua xehetasun guztiekin aztertu behar dut, plan pertsonalizatu bat diseinatzeko eta zuen helburuetara ahalik eta gehien egokitzeko. Horretarako, galdetegi bat bidaliko dizuet. Galdera- sortaren erantzuna jaso ondoren, lehenengo kontsulta bat ezarriko dugu, eta horren ondoren plan bat definituko dut, bideo-dei batean azalduko dizuet, partekatu egingo dugu eta azken zertzeladak elkarrekin emango ditugu. Ados bazaudete, dena idatziz bidaliko dizuet eta egun bat finkatuko dugu bideari ekiteko. Prozesu osoan lagunduko dizuet eta egunero jarraipena egingo dut 3 edo 4 astez. Jarraipena posta edo whatsapp bidez egingo da, egunero egongo gara", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "harremanetan eta behar duzuen guztietan dei bat egingo dugu. Jarraipena amaiturik eta zuen helburuak lortuta, dei bat egingo dugu eta dokumentu bat bidaliko dizuet etorkizuneko egoeretarako jarraibideekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- bideo-dei bidezko kontsulta, plana azaltzeko", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Idatzizko lo-plan pertsonalizatua zuen familiarentzat.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Jarraipena 3 do astez, egunero posta elektronikoz edo Whatsapp bidez", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zalantzak argitzea", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Ondorioak: egingo dugun prozesuaren laburpena, eta etorkizunerako gomendioak jasotzen dituen dokumentu bat bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 340(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2300	eu	1615
\N	Plan de sueño conmigo, pero a tu ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En un inicio este plan es similar a un plan con mi seguimiento: Haré una valoración previa, un estudio, haremos una videollamada y detallaré el plan de sueño acorde a vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero, a veces no es necesario estar en contacto diario. En ese caso, haremos una llamada 2 veces por semana durante 4 semanas; Veremos la situación, los avances, como continuar… Todo al detalle y vosotros lo iréis poniendo en práctica a vuestro ritmo. Eso sí, siempre que lo necesitéis podéis escribirme con vuestras dudas, sentimientos, avances o lo que queráis contarme. Yo seguiré muy cerquita para todo lo que necesitéis.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Y antes de finalizar el plan, haremos otra videollamada para hablar de la situación final, posibles dudas y os daré algunos tips para el futuro.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2301	es	1616
\N	 Plana zeuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baina...gogoz bazaude, oraindik ez bazara erabat agortu eta energia pixka bat geratzen bazaizu zure kabuz egiteko; orduan, jarraipenik gabeko plan bat aukera dezakezu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Kasu horretan ere hasierako galdetegi bat bidaliko dizuet, kasua zehatz-mehatz aztertu ahal izateko. Jasotzean, bideo-dei bat egingo dugu, prozesua zehatz-mehatz azaltzeko, urratsez urrats, eta den-dena idatziz bidaliko dizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Beti izango duzue jarraipena kontratatzeko aukera. Ezin baduzue aurrera egin, blokeatu bazarete, edo agortu bazarete, edo zalantzak badituzue...aukera daukazue dei bat eskatzeko, zaudeten puntutik aurrera prozesua birbideratzeko edo aurrera egiten laguntzeko (25 euro).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubeteko kontsulta (aurrez aurrekoa, telefonoz edo zoom bidez), plana azaltzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo-plana bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "E-mail bat bidali ahal izango didazue hilabeteko epean, plana abian jartzean sor dakizkizuekeen zalantzekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 100(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2402	eu	1666
\N	Amets plana nirekin baina zuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zerbitzu hau nire jarraipenarekin eskeitzen dudan planaren antzekoa da. Zuen kasua aztertuko dut, bideodei batean azalduko dizuet eta idatziko plan bat garatuko dut. Desberdintasuna jarraipenean datza.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Batzuetan ez da beharrezkoa egunero-egunero harremanetan egotea eta astean bitan dei bat eginez familia hobeto moldatzen da. Beti egongo naiz zuei laguntzeko prest, hau da, edozein momentutan hitzegin behar baduzue: zuen sentimenduei buruz, galderak, dudak edo beste edozer buruz, hortxe izango nauzue. Kasu honetan ere 3-4 astetan egongo gara elkarrekin aldaketak pixkanaka, txikiak behar duen arabera, aurrera eramateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera ondotzat ematen dugunean, azkeneko bideodei bat egingo dugu, etorkizunean gertatu daitezkeen egoerei nola aurre egin eta zuen zalantzak argitzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 295(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2302	eu	1616
\N	Encuentros grupales	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pondremos en común las diferentes situaciones personales y os ayudaré a empezar a entender qué ocurre, porqué ocurre y qué opciones tenéis. También hablaremos sobre cómo crear unos hábitos de sueño saludables para nuestro bebe, sobre rutinas, ventanas de sueño y horarios. Os daré trucos y pautas para mejorar alguna situación que no sepáis como afrontar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Los encuentros pueden ser en tiendas, asociaciones, guarderías, centros de salud, etc.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero que aprendas muchísimo, que lo disfrutes y que te ayude a alcanzar los objetivos que buscabas cuando accediste.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2403	es	1667
\N	Talde-topaketak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera pertsonalak bateratuko ditugu, eta lagunduko dizuet ulertzen zer gertatzen den, zergatik gertatzen den eta zer aukera dituzuen. Horrez gain, gure haurtxoarentzako lo-ohitura osasungarriak sortzeko moduari buruz hitz egingo dugu, baita errutinei, lo-leihoei eta ordutegiei buruz ere. Nola aurre egin ez dakizuen egoeraren bat hobetzeko trikimailuak eta jarraibideak emango dizkizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Topaketak dendetan, elkarteetan, haurtzaindegietan, osasun-zentroetan eta abarretan egin daitezke.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero dut zuk ikaragarri ikastea, eta goza dezazula, eta hona iristean bilatzen zenituen helburuak lortzen laguntzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2404	eu	1667
\N	¡Tengo ganas de conocer tu caso! 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "El apego seguro es aquel que se crea cuando las necesidades fisiológicas y emocionales de vuestro peque siempre están atendidas. Si lo hacemos durante el día, dándole cariño, atención y apoyo en todos los momentos, no únicamente en los malos, ¿Cómo no hacerlo a la noche también? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2405	es	1668
\N	Zure kasuaren berri izateko irrikitan nago!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Gure txikiaren behar fisiologiko eta emozionalak zaintzen ditugunean, atxikimendu seguru bat lortzen dugu. Guzti hau, egunean zehar lortzen dugu; maitasuna eskeiniz, behar duenean lagunduz, bere babesleku izanda, eta ez bakarrik momentu txarretan. ¿Nola ez dugu ba, gauean ere egingo?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2406	eu	1668
Servicios	Te ofrezco algo que realmente se adapta a tus necesidades 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué se despierta a los 30-45 min de haberlo acostado?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Sólo se duerme comiendo o en movimiento?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué no puedo dejarlo en la cuna?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Cómo puedo ayudar a mi peque para que duerma durante toda la noche?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Se despierta cada 2 horas?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si te haces alguna o todas estas preguntas, escríbeme, Te aseguro que podemos cambiarlo.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "He creado unos programas que cubren muchas de las situaciones que otros como tú han compartido conmigo, échales un vistazo, y si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Te cuento un poco más, cada programa está diseñado para cubrir unas necesidades diferentes, dependiendo del momento, de la edad, la situación, objetivos y ganas.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2407	es	1669
Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Zergatik esnatzen da oheratu eta 30-45 minutura? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zergatik ezin dut sehaskan utzi? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nola lagundu behar diot nire seme edo alabari gau osoan lo egin dezan?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Galdera hauetakoren bat edo guztiak badituzu, idatzi iezadazu. Ziurtatzen dizut alda ditzakegula.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2408	eu	1669
Mi trabajo	Un poquito más	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cada bebé es muy diferente. Su temperamento, situación, edad, dónde duerme, cómo se duerme... Todo influye, así que no puedo aplicar un único método. Estoy certificada como asesora, pero sobre todo mi experiencia me aporta una visión global de cada caso.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Es normal que no des un paso hacia el cambio por miedo a que el bebé lo pase mal. Pero confia en mi, cuando lo hacemos, es asombroso la capacidad que tienen para adaptarse y sentirás que le has hecho un regalo!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Verle dormir, por fín te hará feliz y disfrutaras de esos momentos. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2409	es	1670
Nire lana	Pixka bat gehiago	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Haur bakoitza oso desberdina da. Beren izaerak, egoerak, adinak, non lo egiten duten, nola lo hartzen duten... Dena eragiten du, beraz, ezin dut metodo bakarra aplikatu. Aholkulari ziurtatua naiz, baina batez ere, nire esperientziak kasu bakoitzaren ikuspegi holistikoa ematen dit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Normala da aldaketa bat egiteko zalantzak izatea haurra haserretzeko beldurrez. Baina sinets iezadazu, egiten dugunean, egokitzeko duten gaitasuna harrigarria da, eta opari bat eman diezula sentituko duzu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Azkenean lo egiten ikusteak zoriontsu egingo zaitu eta une horiek gozatuko dituzu.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2410	eu	1670
\N	Plan a vuestro ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero… Si te encuentras con ganas, aún no has llegado al agotamiento total y te queda algo de energía para hacerlo por tu cuenta, entonces puedes elegir un plan sin seguimiento.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En este caso, también os enviaré un cuestionario inicial para poder estudiar el caso en detalle. Al recibirlo haremos una videollamada para explicaros hasta la última puntilla de cómo llevarlo a cabo, paso a paso y os lo enviaré todo todito por escrito.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Siempre tendréis la opción de contratar el seguimiento. Si no podéis avanzar, os habéis bloqueado, agotado, tenéis dudas… tenéis la opción de solicitar una llamada para reconducir o ayudaros en el punto que estéis, (25 euros).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Consulta de una hora (presencial, por teléfono o por zoom), para explicar el plan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Envío de plan de sueño.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Podréis enviarme un email en un plazo de un mes con las dudas que os puedan surgir al poner en marcha el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}], "direction": null, "textFormat": 1}}	2303	es	1617
Servicios	No dormir de forma continuada nos cambia la forma de vivir la maternidad.	\N	2411	es	1671
Zerbitzuak	Jarraituki lo ez egiteak amatasuna bizitzeko modua aldatzen digu. 	\N	2412	eu	1671
Mi Trabajo	Consultas	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Esta opción encajará con lo que necesitas si no quieres o no crees que necesites un plan detallado por escrito. En este caso no te enviaré un plan de sueño personalizado, pero si una guía de sueño que te servirá de guía.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hablaremos durante una hora y pondremos sobre la mesa todas tus dudas. Por mi parte te explicaré qué podéis hacer paso a paso para mejorar vuestras noches. Te recomiendo que tengas listo boli y papel para poder anotar lo más importante. Para sacar más provecho a esta videollamada, te enviaré un cuestionario previo para saber qué temas os gustaría tratar y tener información en general sobre vuestra situación actual.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Después de hacer la llamada podríais enviarme un email con alguna duda que quedase pendiente de resolver o algo que te gustaría consultar tras poner en práctica lo hablado en la llamada.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si en el plazo de un mes, aún necesitas más ayuda, podrás pagar la diferencia y tener un plan completo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2413	es	1672
Nire lana	Kontsultak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Aukera hau bat etorriko da behar duzunarekin, baldin eta ez baduzu nahi edo ez baduzu uste idatzizko plan zehatz bat behar duzunik. Kasu horretan ez dizut bidaliko lo-plan pertsonalizatu bat, baina gida gisa balioko dizun lo-gida bat bai.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubetez hitz egingo dugu eta zure zalantza guztiak mahai gainean jarriko ditugu. Nik azalduko dizut zer egin dezakezuen pausoz pauso zuen gauak hobetzeko. Boligrafoa eta papera prest izatea gomendatzen dizut, garrantzitsuena idatzi ahal izateko. Bideo-dei honi etekin handiagoa ateratzeko, aldez aurretik galdetegi bat bidaliko dizut, zer gai jorratu nahiko zenituzketen jakiteko eta, oro har, zuen egungo egoerari buruzko informazioa izateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Deia egin ondoren, mezu elektroniko bat bidal zeniezadakete, argitu gabe dagoen zalantzaren batekin edo deian hitz egindakoa praktikan jarri ondoren kontsultatu nahiko zenukeen zerbaitekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baldin eta hilabeteko epean laguntza gehiago behar baduzu, aldea ordaindu eta plan oso bat eduki ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 70(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2414	eu	1672
\N	Plan de sueño personalizado con seguimiento	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si tu bebé tiene más de 6 meses y necesitas volver a descansar, te encuentras agotada y sin ánimo de llevarlo por tu cuenta este es el plan que necesitas. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Necesito estudiar vuestro caso con todos los detalles, para diseñar un plan personalizado y ajustarnos al máximos a vuestros objetivos, para eso os enviaré un cuestionario. Tras recibir vuestra respuesta al cuestionario, estableceremos una primera consulta tras la cual definiré un plan, os lo expondré en una videollamada, lo compartiremos y daremos las últimas pinceladas juntos. Si estáis de acuerdo, os lo enviaré todo por escrito y fijaremos un día para comenzar el camino. Os apoyaré en todo el proceso y haré un seguimiento diario durante 3 o 4 semanas. Si queremos adaptarnos al bebé no podemos marcar una fecha exacta. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El seguimiento será vía correo o whatsapp, estaremos en contacto diariamente y siempre que lo necesitéis citaremos una llamada. Una vez finalizado el seguimiento y haber logrado vuestros objetivos haremos una llamada y os enviaré un documento con pautas para futuras situaciones.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Consulta por videollamada para preserntar el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Plan de sueño por escrito para vuestra familia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Seguimiento durante 3 o 4semanas, diario por email o Whatsapp", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Resolución de dudas", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Conclusiones: Un resumen del proceso que habremos llevado a cabo y envío de un documento con recomendaciones para el futuro. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2415	es	1673
\N	Lo-plan pertsonalizatua, eta jarraipenarekin	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure haurtxoak 6 hilabete baino gehiago baditu eta berriro atseden hartzeko beharra baduzu, leher eginda bazaude eta zeure kabuz eramateko adorerik gabe, hauxe da behar duzun plana. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen kasua xehetasun guztiekin aztertu behar dut, plan pertsonalizatu bat diseinatzeko eta zuen helburuetara ahalik eta gehien egokitzeko. Horretarako, galdetegi bat bidaliko dizuet. Galdera- sortaren erantzuna jaso ondoren, lehenengo kontsulta bat ezarriko dugu, eta horren ondoren plan bat definituko dut, bideo-dei batean azalduko dizuet, partekatu egingo dugu eta azken zertzeladak elkarrekin emango ditugu. Ados bazaudete, dena idatziz bidaliko dizuet eta egun bat finkatuko dugu bideari ekiteko. Prozesu osoan lagunduko dizuet eta egunero jarraipena egingo dut 3 edo 4 astez. Jarraipena posta edo whatsapp bidez egingo da, egunero egongo gara", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "harremanetan eta behar duzuen guztietan dei bat egingo dugu. Jarraipena amaiturik eta zuen helburuak lortuta, dei bat egingo dugu eta dokumentu bat bidaliko dizuet etorkizuneko egoeretarako jarraibideekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- bideo-dei bidezko kontsulta, plana azaltzeko", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Idatzizko lo-plan pertsonalizatua zuen familiarentzat.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Jarraipena 3 do astez, egunero posta elektronikoz edo Whatsapp bidez", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zalantzak argitzea", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Ondorioak: egingo dugun prozesuaren laburpena, eta etorkizunerako gomendioak jasotzen dituen dokumentu bat bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 340(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2416	eu	1673
\N	 Plana zeuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baina...gogoz bazaude, oraindik ez bazara erabat agortu eta energia pixka bat geratzen bazaizu zure kabuz egiteko; orduan, jarraipenik gabeko plan bat aukera dezakezu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Kasu horretan ere hasierako galdetegi bat bidaliko dizuet, kasua zehatz-mehatz aztertu ahal izateko. Jasotzean, bideo-dei bat egingo dugu, prozesua zehatz-mehatz azaltzeko, urratsez urrats, eta den-dena idatziz bidaliko dizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Beti izango duzue jarraipena kontratatzeko aukera. Ezin baduzue aurrera egin, blokeatu bazarete, edo agortu bazarete, edo zalantzak badituzue...aukera daukazue dei bat eskatzeko, zaudeten puntutik aurrera prozesua birbideratzeko edo aurrera egiten laguntzeko (25 euro).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubeteko kontsulta (aurrez aurrekoa, telefonoz edo zoom bidez), plana azaltzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo-plana bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "E-mail bat bidali ahal izango didazue hilabeteko epean, plana abian jartzean sor dakizkizuekeen zalantzekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 100(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2304	eu	1617
\N	Encuentros grupales	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pondremos en común las diferentes situaciones personales y os ayudaré a empezar a entender qué ocurre, porqué ocurre y qué opciones tenéis. También hablaremos sobre cómo crear unos hábitos de sueño saludables para nuestro bebe, sobre rutinas, ventanas de sueño y horarios. Os daré trucos y pautas para mejorar alguna situación que no sepáis como afrontar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Los encuentros pueden ser en tiendas, asociaciones, guarderías, centros de salud, etc.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero que aprendas muchísimo, que lo disfrutes y que te ayude a alcanzar los objetivos que buscabas cuando accediste.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2305	es	1618
\N	Talde-topaketak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera pertsonalak bateratuko ditugu, eta lagunduko dizuet ulertzen zer gertatzen den, zergatik gertatzen den eta zer aukera dituzuen. Horrez gain, gure haurtxoarentzako lo-ohitura osasungarriak sortzeko moduari buruz hitz egingo dugu, baita errutinei, lo-leihoei eta ordutegiei buruz ere. Nola aurre egin ez dakizuen egoeraren bat hobetzeko trikimailuak eta jarraibideak emango dizkizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Topaketak dendetan, elkarteetan, haurtzaindegietan, osasun-zentroetan eta abarretan egin daitezke.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero dut zuk ikaragarri ikastea, eta goza dezazula, eta hona iristean bilatzen zenituen helburuak lortzen laguntzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2306	eu	1618
Servicios	No dormir de forma continuada nos cambia la forma de vivir la maternidad.	\N	2307	es	1619
Zerbitzuak	Jarraituki lo ez egiteak amatasuna bizitzeko modua aldatzen digu. 	\N	2308	eu	1619
Mi Trabajo	Consultas	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Esta opción encajará con lo que necesitas si no quieres o no crees que necesites un plan detallado por escrito. En este caso no te enviaré un plan de sueño personalizado, pero si una guía de sueño que te servirá de guía.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hablaremos durante una hora y pondremos sobre la mesa todas tus dudas. Por mi parte te explicaré qué podéis hacer paso a paso para mejorar vuestras noches. Te recomiendo que tengas listo boli y papel para poder anotar lo más importante. Para sacar más provecho a esta videollamada, te enviaré un cuestionario previo para saber qué temas os gustaría tratar y tener información en general sobre vuestra situación actual.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Después de hacer la llamada podríais enviarme un email con alguna duda que quedase pendiente de resolver o algo que te gustaría consultar tras poner en práctica lo hablado en la llamada.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si en el plazo de un mes, aún necesitas más ayuda, podrás pagar la diferencia y tener un plan completo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2309	es	1620
Nire lana	Kontsultak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Aukera hau bat etorriko da behar duzunarekin, baldin eta ez baduzu nahi edo ez baduzu uste idatzizko plan zehatz bat behar duzunik. Kasu horretan ez dizut bidaliko lo-plan pertsonalizatu bat, baina gida gisa balioko dizun lo-gida bat bai.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubetez hitz egingo dugu eta zure zalantza guztiak mahai gainean jarriko ditugu. Nik azalduko dizut zer egin dezakezuen pausoz pauso zuen gauak hobetzeko. Boligrafoa eta papera prest izatea gomendatzen dizut, garrantzitsuena idatzi ahal izateko. Bideo-dei honi etekin handiagoa ateratzeko, aldez aurretik galdetegi bat bidaliko dizut, zer gai jorratu nahiko zenituzketen jakiteko eta, oro har, zuen egungo egoerari buruzko informazioa izateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Deia egin ondoren, mezu elektroniko bat bidal zeniezadakete, argitu gabe dagoen zalantzaren batekin edo deian hitz egindakoa praktikan jarri ondoren kontsultatu nahiko zenukeen zerbaitekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baldin eta hilabeteko epean laguntza gehiago behar baduzu, aldea ordaindu eta plan oso bat eduki ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 70(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2310	eu	1620
\N	Plan de sueño personalizado con seguimiento	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si tu bebé tiene más de 6 meses y necesitas volver a descansar, te encuentras agotada y sin ánimo de llevarlo por tu cuenta este es el plan que necesitas. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Necesito estudiar vuestro caso con todos los detalles, para diseñar un plan personalizado y ajustarnos al máximos a vuestros objetivos, para eso os enviaré un cuestionario. Tras recibir vuestra respuesta al cuestionario, estableceremos una primera consulta tras la cual definiré un plan, os lo expondré en una videollamada, lo compartiremos y daremos las últimas pinceladas juntos. Si estáis de acuerdo, os lo enviaré todo por escrito y fijaremos un día para comenzar el camino. Os apoyaré en todo el proceso y haré un seguimiento diario durante 3 o 4 semanas. Si queremos adaptarnos al bebé no podemos marcar una fecha exacta. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El seguimiento será vía correo o whatsapp, estaremos en contacto diariamente y siempre que lo necesitéis citaremos una llamada. Una vez finalizado el seguimiento y haber logrado vuestros objetivos haremos una llamada y os enviaré un documento con pautas para futuras situaciones.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Consulta por videollamada para preserntar el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Plan de sueño por escrito para vuestra familia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Seguimiento durante 3 o 4semanas, diario por email o Whatsapp", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Resolución de dudas", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Conclusiones: Un resumen del proceso que habremos llevado a cabo y envío de un documento con recomendaciones para el futuro. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2311	es	1621
\N	Plan de sueño conmigo, pero a tu ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En un inicio este plan es similar a un plan con mi seguimiento: Haré una valoración previa, un estudio, haremos una videollamada y detallaré el plan de sueño acorde a vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero, a veces no es necesario estar en contacto diario. En ese caso, haremos una llamada 2 veces por semana durante 4 semanas; Veremos la situación, los avances, como continuar… Todo al detalle y vosotros lo iréis poniendo en práctica a vuestro ritmo. Eso sí, siempre que lo necesitéis podéis escribirme con vuestras dudas, sentimientos, avances o lo que queráis contarme. Yo seguiré muy cerquita para todo lo que necesitéis.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Y antes de finalizar el plan, haremos otra videollamada para hablar de la situación final, posibles dudas y os daré algunos tips para el futuro.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2417	es	1674
\N	Amets plana nirekin baina zuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zerbitzu hau nire jarraipenarekin eskeitzen dudan planaren antzekoa da. Zuen kasua aztertuko dut, bideodei batean azalduko dizuet eta idatziko plan bat garatuko dut. Desberdintasuna jarraipenean datza.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Batzuetan ez da beharrezkoa egunero-egunero harremanetan egotea eta astean bitan dei bat eginez familia hobeto moldatzen da. Beti egongo naiz zuei laguntzeko prest, hau da, edozein momentutan hitzegin behar baduzue: zuen sentimenduei buruz, galderak, dudak edo beste edozer buruz, hortxe izango nauzue. Kasu honetan ere 3-4 astetan egongo gara elkarrekin aldaketak pixkanaka, txikiak behar duen arabera, aurrera eramateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera ondotzat ematen dugunean, azkeneko bideodei bat egingo dugu, etorkizunean gertatu daitezkeen egoerei nola aurre egin eta zuen zalantzak argitzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 295(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2418	eu	1674
\N	Plan a vuestro ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero… Si te encuentras con ganas, aún no has llegado al agotamiento total y te queda algo de energía para hacerlo por tu cuenta, entonces puedes elegir un plan sin seguimiento.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En este caso, también os enviaré un cuestionario inicial para poder estudiar el caso en detalle. Al recibirlo haremos una videollamada para explicaros hasta la última puntilla de cómo llevarlo a cabo, paso a paso y os lo enviaré todo todito por escrito.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Siempre tendréis la opción de contratar el seguimiento. Si no podéis avanzar, os habéis bloqueado, agotado, tenéis dudas… tenéis la opción de solicitar una llamada para reconducir o ayudaros en el punto que estéis, (25 euros).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Consulta de una hora (presencial, por teléfono o por zoom), para explicar el plan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Envío de plan de sueño.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Podréis enviarme un email en un plazo de un mes con las dudas que os puedan surgir al poner en marcha el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}], "direction": null, "textFormat": 1}}	2419	es	1675
\N	 Plana zeuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baina...gogoz bazaude, oraindik ez bazara erabat agortu eta energia pixka bat geratzen bazaizu zure kabuz egiteko; orduan, jarraipenik gabeko plan bat aukera dezakezu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Kasu horretan ere hasierako galdetegi bat bidaliko dizuet, kasua zehatz-mehatz aztertu ahal izateko. Jasotzean, bideo-dei bat egingo dugu, prozesua zehatz-mehatz azaltzeko, urratsez urrats, eta den-dena idatziz bidaliko dizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Beti izango duzue jarraipena kontratatzeko aukera. Ezin baduzue aurrera egin, blokeatu bazarete, edo agortu bazarete, edo zalantzak badituzue...aukera daukazue dei bat eskatzeko, zaudeten puntutik aurrera prozesua birbideratzeko edo aurrera egiten laguntzeko (25 euro).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubeteko kontsulta (aurrez aurrekoa, telefonoz edo zoom bidez), plana azaltzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo-plana bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "E-mail bat bidali ahal izango didazue hilabeteko epean, plana abian jartzean sor dakizkizuekeen zalantzekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 100(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2420	eu	1675
\N	Encuentros grupales	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pondremos en común las diferentes situaciones personales y os ayudaré a empezar a entender qué ocurre, porqué ocurre y qué opciones tenéis. También hablaremos sobre cómo crear unos hábitos de sueño saludables para nuestro bebe, sobre rutinas, ventanas de sueño y horarios. Os daré trucos y pautas para mejorar alguna situación que no sepáis como afrontar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Los encuentros pueden ser en tiendas, asociaciones, guarderías, centros de salud, etc.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero que aprendas muchísimo, que lo disfrutes y que te ayude a alcanzar los objetivos que buscabas cuando accediste.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2421	es	1676
\N	Talde-topaketak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera pertsonalak bateratuko ditugu, eta lagunduko dizuet ulertzen zer gertatzen den, zergatik gertatzen den eta zer aukera dituzuen. Horrez gain, gure haurtxoarentzako lo-ohitura osasungarriak sortzeko moduari buruz hitz egingo dugu, baita errutinei, lo-leihoei eta ordutegiei buruz ere. Nola aurre egin ez dakizuen egoeraren bat hobetzeko trikimailuak eta jarraibideak emango dizkizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Topaketak dendetan, elkarteetan, haurtzaindegietan, osasun-zentroetan eta abarretan egin daitezke.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero dut zuk ikaragarri ikastea, eta goza dezazula, eta hona iristean bilatzen zenituen helburuak lortzen laguntzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2422	eu	1676
\N	Lo-plan pertsonalizatua, eta jarraipenarekin	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure haurtxoak 6 hilabete baino gehiago baditu eta berriro atseden hartzeko beharra baduzu, leher eginda bazaude eta zeure kabuz eramateko adorerik gabe, hauxe da behar duzun plana. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen kasua xehetasun guztiekin aztertu behar dut, plan pertsonalizatu bat diseinatzeko eta zuen helburuetara ahalik eta gehien egokitzeko. Horretarako, galdetegi bat bidaliko dizuet. Galdera- sortaren erantzuna jaso ondoren, lehenengo kontsulta bat ezarriko dugu, eta horren ondoren plan bat definituko dut, bideo-dei batean azalduko dizuet, partekatu egingo dugu eta azken zertzeladak elkarrekin emango ditugu. Ados bazaudete, dena idatziz bidaliko dizuet eta egun bat finkatuko dugu bideari ekiteko. Prozesu osoan lagunduko dizuet eta egunero jarraipena egingo dut 3 edo 4 astez. Jarraipena posta edo whatsapp bidez egingo da, egunero egongo gara", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "harremanetan eta behar duzuen guztietan dei bat egingo dugu. Jarraipena amaiturik eta zuen helburuak lortuta, dei bat egingo dugu eta dokumentu bat bidaliko dizuet etorkizuneko egoeretarako jarraibideekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- bideo-dei bidezko kontsulta, plana azaltzeko", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Idatzizko lo-plan pertsonalizatua zuen familiarentzat.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Jarraipena 3 do astez, egunero posta elektronikoz edo Whatsapp bidez", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zalantzak argitzea", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Ondorioak: egingo dugun prozesuaren laburpena, eta etorkizunerako gomendioak jasotzen dituen dokumentu bat bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 340(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2312	eu	1621
\N	Plan de sueño conmigo, pero a tu ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En un inicio este plan es similar a un plan con mi seguimiento: Haré una valoración previa, un estudio, haremos una videollamada y detallaré el plan de sueño acorde a vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero, a veces no es necesario estar en contacto diario. En ese caso, haremos una llamada 2 veces por semana durante 4 semanas; Veremos la situación, los avances, como continuar… Todo al detalle y vosotros lo iréis poniendo en práctica a vuestro ritmo. Eso sí, siempre que lo necesitéis podéis escribirme con vuestras dudas, sentimientos, avances o lo que queráis contarme. Yo seguiré muy cerquita para todo lo que necesitéis.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Y antes de finalizar el plan, haremos otra videollamada para hablar de la situación final, posibles dudas y os daré algunos tips para el futuro.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2313	es	1622
\N	Amets plana nirekin baina zuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zerbitzu hau nire jarraipenarekin eskeitzen dudan planaren antzekoa da. Zuen kasua aztertuko dut, bideodei batean azalduko dizuet eta idatziko plan bat garatuko dut. Desberdintasuna jarraipenean datza.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Batzuetan ez da beharrezkoa egunero-egunero harremanetan egotea eta astean bitan dei bat eginez familia hobeto moldatzen da. Beti egongo naiz zuei laguntzeko prest, hau da, edozein momentutan hitzegin behar baduzue: zuen sentimenduei buruz, galderak, dudak edo beste edozer buruz, hortxe izango nauzue. Kasu honetan ere 3-4 astetan egongo gara elkarrekin aldaketak pixkanaka, txikiak behar duen arabera, aurrera eramateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera ondotzat ematen dugunean, azkeneko bideodei bat egingo dugu, etorkizunean gertatu daitezkeen egoerei nola aurre egin eta zuen zalantzak argitzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 295(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2314	eu	1622
\N	Plan a vuestro ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero… Si te encuentras con ganas, aún no has llegado al agotamiento total y te queda algo de energía para hacerlo por tu cuenta, entonces puedes elegir un plan sin seguimiento.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En este caso, también os enviaré un cuestionario inicial para poder estudiar el caso en detalle. Al recibirlo haremos una videollamada para explicaros hasta la última puntilla de cómo llevarlo a cabo, paso a paso y os lo enviaré todo todito por escrito.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Siempre tendréis la opción de contratar el seguimiento. Si no podéis avanzar, os habéis bloqueado, agotado, tenéis dudas… tenéis la opción de solicitar una llamada para reconducir o ayudaros en el punto que estéis, (25 euros).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Consulta de una hora (presencial, por teléfono o por zoom), para explicar el plan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Envío de plan de sueño.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Podréis enviarme un email en un plazo de un mes con las dudas que os puedan surgir al poner en marcha el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}], "direction": null, "textFormat": 1}}	2315	es	1623
\N	 Plana zeuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baina...gogoz bazaude, oraindik ez bazara erabat agortu eta energia pixka bat geratzen bazaizu zure kabuz egiteko; orduan, jarraipenik gabeko plan bat aukera dezakezu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Kasu horretan ere hasierako galdetegi bat bidaliko dizuet, kasua zehatz-mehatz aztertu ahal izateko. Jasotzean, bideo-dei bat egingo dugu, prozesua zehatz-mehatz azaltzeko, urratsez urrats, eta den-dena idatziz bidaliko dizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Beti izango duzue jarraipena kontratatzeko aukera. Ezin baduzue aurrera egin, blokeatu bazarete, edo agortu bazarete, edo zalantzak badituzue...aukera daukazue dei bat eskatzeko, zaudeten puntutik aurrera prozesua birbideratzeko edo aurrera egiten laguntzeko (25 euro).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubeteko kontsulta (aurrez aurrekoa, telefonoz edo zoom bidez), plana azaltzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo-plana bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "E-mail bat bidali ahal izango didazue hilabeteko epean, plana abian jartzean sor dakizkizuekeen zalantzekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 100(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2316	eu	1623
\N	Encuentros grupales	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pondremos en común las diferentes situaciones personales y os ayudaré a empezar a entender qué ocurre, porqué ocurre y qué opciones tenéis. También hablaremos sobre cómo crear unos hábitos de sueño saludables para nuestro bebe, sobre rutinas, ventanas de sueño y horarios. Os daré trucos y pautas para mejorar alguna situación que no sepáis como afrontar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Los encuentros pueden ser en tiendas, asociaciones, guarderías, centros de salud, etc.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero que aprendas muchísimo, que lo disfrutes y que te ayude a alcanzar los objetivos que buscabas cuando accediste.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2317	es	1624
\N	Talde-topaketak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera pertsonalak bateratuko ditugu, eta lagunduko dizuet ulertzen zer gertatzen den, zergatik gertatzen den eta zer aukera dituzuen. Horrez gain, gure haurtxoarentzako lo-ohitura osasungarriak sortzeko moduari buruz hitz egingo dugu, baita errutinei, lo-leihoei eta ordutegiei buruz ere. Nola aurre egin ez dakizuen egoeraren bat hobetzeko trikimailuak eta jarraibideak emango dizkizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Topaketak dendetan, elkarteetan, haurtzaindegietan, osasun-zentroetan eta abarretan egin daitezke.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero dut zuk ikaragarri ikastea, eta goza dezazula, eta hona iristean bilatzen zenituen helburuak lortzen laguntzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2318	eu	1624
Servicios	No dormir de forma continuada nos cambia la forma de vivir la maternidad.	\N	2319	es	1625
Zerbitzuak	Jarraituki lo ez egiteak amatasuna bizitzeko modua aldatzen digu. 	\N	2320	eu	1625
Mi Trabajo	Consultas	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Esta opción encajará con lo que necesitas si no quieres o no crees que necesites un plan detallado por escrito. En este caso no te enviaré un plan de sueño personalizado, pero si una guía de sueño que te servirá de guía.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hablaremos durante una hora y pondremos sobre la mesa todas tus dudas. Por mi parte te explicaré qué podéis hacer paso a paso para mejorar vuestras noches. Te recomiendo que tengas listo boli y papel para poder anotar lo más importante. Para sacar más provecho a esta videollamada, te enviaré un cuestionario previo para saber qué temas os gustaría tratar y tener información en general sobre vuestra situación actual.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Después de hacer la llamada podríais enviarme un email con alguna duda que quedase pendiente de resolver o algo que te gustaría consultar tras poner en práctica lo hablado en la llamada.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si en el plazo de un mes, aún necesitas más ayuda, podrás pagar la diferencia y tener un plan completo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2321	es	1626
Nire lana	Kontsultak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Aukera hau bat etorriko da behar duzunarekin, baldin eta ez baduzu nahi edo ez baduzu uste idatzizko plan zehatz bat behar duzunik. Kasu horretan ez dizut bidaliko lo-plan pertsonalizatu bat, baina gida gisa balioko dizun lo-gida bat bai.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubetez hitz egingo dugu eta zure zalantza guztiak mahai gainean jarriko ditugu. Nik azalduko dizut zer egin dezakezuen pausoz pauso zuen gauak hobetzeko. Boligrafoa eta papera prest izatea gomendatzen dizut, garrantzitsuena idatzi ahal izateko. Bideo-dei honi etekin handiagoa ateratzeko, aldez aurretik galdetegi bat bidaliko dizut, zer gai jorratu nahiko zenituzketen jakiteko eta, oro har, zuen egungo egoerari buruzko informazioa izateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Deia egin ondoren, mezu elektroniko bat bidal zeniezadakete, argitu gabe dagoen zalantzaren batekin edo deian hitz egindakoa praktikan jarri ondoren kontsultatu nahiko zenukeen zerbaitekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baldin eta hilabeteko epean laguntza gehiago behar baduzu, aldea ordaindu eta plan oso bat eduki ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 70(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2322	eu	1626
\N	Plan de sueño personalizado con seguimiento	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si tu bebé tiene más de 6 meses y necesitas volver a descansar, te encuentras agotada y sin ánimo de llevarlo por tu cuenta este es el plan que necesitas. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Necesito estudiar vuestro caso con todos los detalles, para diseñar un plan personalizado y ajustarnos al máximos a vuestros objetivos, para eso os enviaré un cuestionario. Tras recibir vuestra respuesta al cuestionario, estableceremos una primera consulta tras la cual definiré un plan, os lo expondré en una videollamada, lo compartiremos y daremos las últimas pinceladas juntos. Si estáis de acuerdo, os lo enviaré todo por escrito y fijaremos un día para comenzar el camino. Os apoyaré en todo el proceso y haré un seguimiento diario durante 3 o 4 semanas. Si queremos adaptarnos al bebé no podemos marcar una fecha exacta. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El seguimiento será vía correo o whatsapp, estaremos en contacto diariamente y siempre que lo necesitéis citaremos una llamada. Una vez finalizado el seguimiento y haber logrado vuestros objetivos haremos una llamada y os enviaré un documento con pautas para futuras situaciones.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Consulta por videollamada para preserntar el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Plan de sueño por escrito para vuestra familia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Seguimiento durante 3 o 4semanas, diario por email o Whatsapp", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Resolución de dudas", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Conclusiones: Un resumen del proceso que habremos llevado a cabo y envío de un documento con recomendaciones para el futuro. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2323	es	1627
\N	Lo-plan pertsonalizatua, eta jarraipenarekin	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure haurtxoak 6 hilabete baino gehiago baditu eta berriro atseden hartzeko beharra baduzu, leher eginda bazaude eta zeure kabuz eramateko adorerik gabe, hauxe da behar duzun plana. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen kasua xehetasun guztiekin aztertu behar dut, plan pertsonalizatu bat diseinatzeko eta zuen helburuetara ahalik eta gehien egokitzeko. Horretarako, galdetegi bat bidaliko dizuet. Galdera- sortaren erantzuna jaso ondoren, lehenengo kontsulta bat ezarriko dugu, eta horren ondoren plan bat definituko dut, bideo-dei batean azalduko dizuet, partekatu egingo dugu eta azken zertzeladak elkarrekin emango ditugu. Ados bazaudete, dena idatziz bidaliko dizuet eta egun bat finkatuko dugu bideari ekiteko. Prozesu osoan lagunduko dizuet eta egunero jarraipena egingo dut 3 edo 4 astez. Jarraipena posta edo whatsapp bidez egingo da, egunero egongo gara", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "harremanetan eta behar duzuen guztietan dei bat egingo dugu. Jarraipena amaiturik eta zuen helburuak lortuta, dei bat egingo dugu eta dokumentu bat bidaliko dizuet etorkizuneko egoeretarako jarraibideekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- bideo-dei bidezko kontsulta, plana azaltzeko", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Idatzizko lo-plan pertsonalizatua zuen familiarentzat.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Jarraipena 3 do astez, egunero posta elektronikoz edo Whatsapp bidez", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zalantzak argitzea", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Ondorioak: egingo dugun prozesuaren laburpena, eta etorkizunerako gomendioak jasotzen dituen dokumentu bat bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 340(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2324	eu	1627
\N	Plan de sueño conmigo, pero a tu ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En un inicio este plan es similar a un plan con mi seguimiento: Haré una valoración previa, un estudio, haremos una videollamada y detallaré el plan de sueño acorde a vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero, a veces no es necesario estar en contacto diario. En ese caso, haremos una llamada 2 veces por semana durante 4 semanas; Veremos la situación, los avances, como continuar… Todo al detalle y vosotros lo iréis poniendo en práctica a vuestro ritmo. Eso sí, siempre que lo necesitéis podéis escribirme con vuestras dudas, sentimientos, avances o lo que queráis contarme. Yo seguiré muy cerquita para todo lo que necesitéis.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Y antes de finalizar el plan, haremos otra videollamada para hablar de la situación final, posibles dudas y os daré algunos tips para el futuro.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2325	es	1628
\N	Amets plana nirekin baina zuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zerbitzu hau nire jarraipenarekin eskeitzen dudan planaren antzekoa da. Zuen kasua aztertuko dut, bideodei batean azalduko dizuet eta idatziko plan bat garatuko dut. Desberdintasuna jarraipenean datza.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Batzuetan ez da beharrezkoa egunero-egunero harremanetan egotea eta astean bitan dei bat eginez familia hobeto moldatzen da. Beti egongo naiz zuei laguntzeko prest, hau da, edozein momentutan hitzegin behar baduzue: zuen sentimenduei buruz, galderak, dudak edo beste edozer buruz, hortxe izango nauzue. Kasu honetan ere 3-4 astetan egongo gara elkarrekin aldaketak pixkanaka, txikiak behar duen arabera, aurrera eramateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera ondotzat ematen dugunean, azkeneko bideodei bat egingo dugu, etorkizunean gertatu daitezkeen egoerei nola aurre egin eta zuen zalantzak argitzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 295(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2326	eu	1628
\N	Plan a vuestro ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero… Si te encuentras con ganas, aún no has llegado al agotamiento total y te queda algo de energía para hacerlo por tu cuenta, entonces puedes elegir un plan sin seguimiento.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En este caso, también os enviaré un cuestionario inicial para poder estudiar el caso en detalle. Al recibirlo haremos una videollamada para explicaros hasta la última puntilla de cómo llevarlo a cabo, paso a paso y os lo enviaré todo todito por escrito.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Siempre tendréis la opción de contratar el seguimiento. Si no podéis avanzar, os habéis bloqueado, agotado, tenéis dudas… tenéis la opción de solicitar una llamada para reconducir o ayudaros en el punto que estéis, (25 euros).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Consulta de una hora (presencial, por teléfono o por zoom), para explicar el plan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Envío de plan de sueño.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Podréis enviarme un email en un plazo de un mes con las dudas que os puedan surgir al poner en marcha el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}], "direction": null, "textFormat": 1}}	2327	es	1629
\N	 Plana zeuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baina...gogoz bazaude, oraindik ez bazara erabat agortu eta energia pixka bat geratzen bazaizu zure kabuz egiteko; orduan, jarraipenik gabeko plan bat aukera dezakezu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Kasu horretan ere hasierako galdetegi bat bidaliko dizuet, kasua zehatz-mehatz aztertu ahal izateko. Jasotzean, bideo-dei bat egingo dugu, prozesua zehatz-mehatz azaltzeko, urratsez urrats, eta den-dena idatziz bidaliko dizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Beti izango duzue jarraipena kontratatzeko aukera. Ezin baduzue aurrera egin, blokeatu bazarete, edo agortu bazarete, edo zalantzak badituzue...aukera daukazue dei bat eskatzeko, zaudeten puntutik aurrera prozesua birbideratzeko edo aurrera egiten laguntzeko (25 euro).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubeteko kontsulta (aurrez aurrekoa, telefonoz edo zoom bidez), plana azaltzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo-plana bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "E-mail bat bidali ahal izango didazue hilabeteko epean, plana abian jartzean sor dakizkizuekeen zalantzekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 100(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2328	eu	1629
\N	Encuentros grupales	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pondremos en común las diferentes situaciones personales y os ayudaré a empezar a entender qué ocurre, porqué ocurre y qué opciones tenéis. También hablaremos sobre cómo crear unos hábitos de sueño saludables para nuestro bebe, sobre rutinas, ventanas de sueño y horarios. Os daré trucos y pautas para mejorar alguna situación que no sepáis como afrontar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Los encuentros pueden ser en tiendas, asociaciones, guarderías, centros de salud, etc.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero que aprendas muchísimo, que lo disfrutes y que te ayude a alcanzar los objetivos que buscabas cuando accediste.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2329	es	1630
\N	Talde-topaketak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera pertsonalak bateratuko ditugu, eta lagunduko dizuet ulertzen zer gertatzen den, zergatik gertatzen den eta zer aukera dituzuen. Horrez gain, gure haurtxoarentzako lo-ohitura osasungarriak sortzeko moduari buruz hitz egingo dugu, baita errutinei, lo-leihoei eta ordutegiei buruz ere. Nola aurre egin ez dakizuen egoeraren bat hobetzeko trikimailuak eta jarraibideak emango dizkizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Topaketak dendetan, elkarteetan, haurtzaindegietan, osasun-zentroetan eta abarretan egin daitezke.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero dut zuk ikaragarri ikastea, eta goza dezazula, eta hona iristean bilatzen zenituen helburuak lortzen laguntzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2330	eu	1630
\N	Encuentros grupales	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pondremos en común las diferentes situaciones personales y os ayudaré a empezar a entender qué ocurre, porqué ocurre y qué opciones tenéis. También hablaremos sobre cómo crear unos hábitos de sueño saludables para nuestro bebe, sobre rutinas, ventanas de sueño y horarios. Os daré trucos y pautas para mejorar alguna situación que no sepáis como afrontar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Los encuentros pueden ser en tiendas, asociaciones, guarderías, centros de salud, etc.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero que aprendas muchísimo, que lo disfrutes y que te ayude a alcanzar los objetivos que buscabas cuando accediste.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2377	es	1654
\N	¡Tengo ganas de conocer tu caso! 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "El apego seguro es aquel que se crea cuando las necesidades fisiológicas y emocionales de vuestro peque siempre están atendidas. Si lo hacemos durante el día, dándole cariño, atención y apoyo en todos los momentos, no únicamente en los malos, ¿Cómo no hacerlo a la noche también? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2233	es	1582
\N	Zure kasuaren berri izateko irrikitan nago!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Gure txikiaren behar fisiologiko eta emozionalak zaintzen ditugunean, atxikimendu seguru bat lortzen dugu. Guzti hau, egunean zehar lortzen dugu; maitasuna eskeiniz, behar duenean lagunduz, bere babesleku izanda, eta ez bakarrik momentu txarretan. ¿Nola ez dugu ba, gauean ere egingo?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2234	eu	1582
Servicios	Te ofrezco algo que realmente se adapta a tus necesidades 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué se despierta a los 30-45 min de haberlo acostado?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Sólo se duerme comiendo o en movimiento?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué no puedo dejarlo en la cuna?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Cómo puedo ayudar a mi peque para que duerma durante toda la noche?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Se despierta cada 2 horas?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si te haces alguna o todas estas preguntas, escríbeme, Te aseguro que podemos cambiarlo.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "He creado unos programas que cubren muchas de las situaciones que otros como tú han compartido conmigo, échales un vistazo, y si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Te cuento un poco más, cada programa está diseñado para cubrir unas necesidades diferentes, dependiendo del momento, de la edad, la situación, objetivos y ganas.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2235	es	1583
Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Zergatik esnatzen da oheratu eta 30-45 minutura? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zergatik ezin dut sehaskan utzi? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nola lagundu behar diot nire seme edo alabari gau osoan lo egin dezan?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Galdera hauetakoren bat edo guztiak badituzu, idatzi iezadazu. Ziurtatzen dizut alda ditzakegula.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2236	eu	1583
Mi trabajo	Un poquito más	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cada bebé es muy diferente. Su temperamento, situación, edad, dónde duerme, cómo se duerme... Todo influye, así que no puedo aplicar un único método. Estoy certificada como asesora, pero sobre todo mi experiencia me aporta una visión global de cada caso.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Es normal que no des un paso hacia el cambio por miedo a que el bebé lo pase mal. Pero confia en mi, cuando lo hacemos, es asombroso la capacidad que tienen para adaptarse y sentirás que le has hecho un regalo!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Verle dormir, por fín te hará feliz y disfrutaras de esos momentos. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2237	es	1584
\N	¡Tengo ganas de conocer tu caso! 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "El apego seguro es aquel que se crea cuando las necesidades fisiológicas y emocionales de vuestro peque siempre están atendidas. Si lo hacemos durante el día, dándole cariño, atención y apoyo en todos los momentos, no únicamente en los malos, ¿Cómo no hacerlo a la noche también? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2331	es	1631
Nire lana	Pixka bat gehiago	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Haur bakoitza oso desberdina da. Beren izaerak, egoerak, adinak, non lo egiten duten, nola lo hartzen duten... Dena eragiten du, beraz, ezin dut metodo bakarra aplikatu. Aholkulari ziurtatua naiz, baina batez ere, nire esperientziak kasu bakoitzaren ikuspegi holistikoa ematen dit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Normala da aldaketa bat egiteko zalantzak izatea haurra haserretzeko beldurrez. Baina sinets iezadazu, egiten dugunean, egokitzeko duten gaitasuna harrigarria da, eta opari bat eman diezula sentituko duzu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Azkenean lo egiten ikusteak zoriontsu egingo zaitu eta une horiek gozatuko dituzu.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2238	eu	1584
\N	¡Tengo ganas de conocer tu caso! 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "El apego seguro es aquel que se crea cuando las necesidades fisiológicas y emocionales de vuestro peque siempre están atendidas. Si lo hacemos durante el día, dándole cariño, atención y apoyo en todos los momentos, no únicamente en los malos, ¿Cómo no hacerlo a la noche también? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2239	es	1585
\N	Zure kasuaren berri izateko irrikitan nago!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Gure txikiaren behar fisiologiko eta emozionalak zaintzen ditugunean, atxikimendu seguru bat lortzen dugu. Guzti hau, egunean zehar lortzen dugu; maitasuna eskeiniz, behar duenean lagunduz, bere babesleku izanda, eta ez bakarrik momentu txarretan. ¿Nola ez dugu ba, gauean ere egingo?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2332	eu	1631
Servicios	Te ofrezco algo que realmente se adapta a tus necesidades 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué se despierta a los 30-45 min de haberlo acostado?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Sólo se duerme comiendo o en movimiento?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué no puedo dejarlo en la cuna?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Cómo puedo ayudar a mi peque para que duerma durante toda la noche?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Se despierta cada 2 horas?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si te haces alguna o todas estas preguntas, escríbeme, Te aseguro que podemos cambiarlo.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "He creado unos programas que cubren muchas de las situaciones que otros como tú han compartido conmigo, échales un vistazo, y si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Te cuento un poco más, cada programa está diseñado para cubrir unas necesidades diferentes, dependiendo del momento, de la edad, la situación, objetivos y ganas.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2333	es	1632
Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Zergatik esnatzen da oheratu eta 30-45 minutura? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zergatik ezin dut sehaskan utzi? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nola lagundu behar diot nire seme edo alabari gau osoan lo egin dezan?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Galdera hauetakoren bat edo guztiak badituzu, idatzi iezadazu. Ziurtatzen dizut alda ditzakegula.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2334	eu	1632
Mi trabajo	Un poquito más	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cada bebé es muy diferente. Su temperamento, situación, edad, dónde duerme, cómo se duerme... Todo influye, así que no puedo aplicar un único método. Estoy certificada como asesora, pero sobre todo mi experiencia me aporta una visión global de cada caso.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Es normal que no des un paso hacia el cambio por miedo a que el bebé lo pase mal. Pero confia en mi, cuando lo hacemos, es asombroso la capacidad que tienen para adaptarse y sentirás que le has hecho un regalo!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Verle dormir, por fín te hará feliz y disfrutaras de esos momentos. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2335	es	1633
\N	Zure kasuaren berri izateko irrikitan nago!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Gure txikiaren behar fisiologiko eta emozionalak zaintzen ditugunean, atxikimendu seguru bat lortzen dugu. Guzti hau, egunean zehar lortzen dugu; maitasuna eskeiniz, behar duenean lagunduz, bere babesleku izanda, eta ez bakarrik momentu txarretan. ¿Nola ez dugu ba, gauean ere egingo?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2240	eu	1585
Servicios	Te ofrezco algo que realmente se adapta a tus necesidades 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué se despierta a los 30-45 min de haberlo acostado?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Sólo se duerme comiendo o en movimiento?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué no puedo dejarlo en la cuna?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Cómo puedo ayudar a mi peque para que duerma durante toda la noche?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Se despierta cada 2 horas?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si te haces alguna o todas estas preguntas, escríbeme, Te aseguro que podemos cambiarlo.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "He creado unos programas que cubren muchas de las situaciones que otros como tú han compartido conmigo, échales un vistazo, y si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Te cuento un poco más, cada programa está diseñado para cubrir unas necesidades diferentes, dependiendo del momento, de la edad, la situación, objetivos y ganas.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2241	es	1586
Nire lana	Pixka bat gehiago	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Haur bakoitza oso desberdina da. Beren izaerak, egoerak, adinak, non lo egiten duten, nola lo hartzen duten... Dena eragiten du, beraz, ezin dut metodo bakarra aplikatu. Aholkulari ziurtatua naiz, baina batez ere, nire esperientziak kasu bakoitzaren ikuspegi holistikoa ematen dit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Normala da aldaketa bat egiteko zalantzak izatea haurra haserretzeko beldurrez. Baina sinets iezadazu, egiten dugunean, egokitzeko duten gaitasuna harrigarria da, eta opari bat eman diezula sentituko duzu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Azkenean lo egiten ikusteak zoriontsu egingo zaitu eta une horiek gozatuko dituzu.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2336	eu	1633
Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Zergatik esnatzen da oheratu eta 30-45 minutura? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zergatik ezin dut sehaskan utzi? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nola lagundu behar diot nire seme edo alabari gau osoan lo egin dezan?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Galdera hauetakoren bat edo guztiak badituzu, idatzi iezadazu. Ziurtatzen dizut alda ditzakegula.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2242	eu	1586
Mi trabajo	Un poquito más	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cada bebé es muy diferente. Su temperamento, situación, edad, dónde duerme, cómo se duerme... Todo influye, así que no puedo aplicar un único método. Estoy certificada como asesora, pero sobre todo mi experiencia me aporta una visión global de cada caso.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Es normal que no des un paso hacia el cambio por miedo a que el bebé lo pase mal. Pero confia en mi, cuando lo hacemos, es asombroso la capacidad que tienen para adaptarse y sentirás que le has hecho un regalo!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Verle dormir, por fín te hará feliz y disfrutaras de esos momentos. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2243	es	1587
Nire lana	Pixka bat gehiago	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Haur bakoitza oso desberdina da. Beren izaerak, egoerak, adinak, non lo egiten duten, nola lo hartzen duten... Dena eragiten du, beraz, ezin dut metodo bakarra aplikatu. Aholkulari ziurtatua naiz, baina batez ere, nire esperientziak kasu bakoitzaren ikuspegi holistikoa ematen dit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Normala da aldaketa bat egiteko zalantzak izatea haurra haserretzeko beldurrez. Baina sinets iezadazu, egiten dugunean, egokitzeko duten gaitasuna harrigarria da, eta opari bat eman diezula sentituko duzu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Azkenean lo egiten ikusteak zoriontsu egingo zaitu eta une horiek gozatuko dituzu.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2244	eu	1587
\N	¡Tengo ganas de conocer tu caso! 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "El apego seguro es aquel que se crea cuando las necesidades fisiológicas y emocionales de vuestro peque siempre están atendidas. Si lo hacemos durante el día, dándole cariño, atención y apoyo en todos los momentos, no únicamente en los malos, ¿Cómo no hacerlo a la noche también? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2337	es	1634
\N	Zure kasuaren berri izateko irrikitan nago!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Gure txikiaren behar fisiologiko eta emozionalak zaintzen ditugunean, atxikimendu seguru bat lortzen dugu. Guzti hau, egunean zehar lortzen dugu; maitasuna eskeiniz, behar duenean lagunduz, bere babesleku izanda, eta ez bakarrik momentu txarretan. ¿Nola ez dugu ba, gauean ere egingo?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2338	eu	1634
sobre mí	¡Toda una aventura!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Soy Alazne, la maternidad y las noches sin dormir me llevaron a", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "formarme como asesora de sueño infantil.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mi niño mayor, Inari tiene 4 años. Hasta los dos años no dormíamos más de dos horas seguidas, continuaba dándole pecho a demanda y hacíamos colecho para sobrevivir. Realmente ninguno de los dos descansábamos y yo me despertaba peor de lo que me había acostado.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuando las noches sin dormir son constantes, y al día siguiente hay que trabajar o cuidar de un bebé puede ser un suplicio o una pesadilla que nos afecte emocionalmente. En mi caso, estar con mi bebé era agotador, y las horas del día se me hacían eternas…", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento nos sorprendió la pandemia y aunque yo no lo sabía estaba embarazada de Aia, mi niña pequeña. Mi cuerpo me decía que había llegado el momento y mi mente no daba más de si, todos necesitábamos dormir con urgencia", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Nos pusimos a hacer pequeños cambios a las noches y fue asombroso cómo en unos días comenzaron a disminuir los despertares, parecía magia!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "No me podía creer que podía hacer los cambios con tanto cuidado. Inari no lloró en ningún momento, fue todo tan cuidado que para cuando nos dimos cuenta pudimos cambiarle a su habitación y todos comenzamos a descansar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Toda una aventura!! Os puedo asegurar que el haber vivido esos años de sueño me hace empatizar con las familias, se pasa realmente mal.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento aprendí muchísimo y me di cuenta de que muchas familias estaban en nuestra misma situación y podía ayudarles a dormir mejor.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Investigué y leí muchísimo sobre las diferentes formas de entender los procesos del sueño. Finalmente decidí formarme en este ámbito y certificarme como Gentle Sleep Coach (asesora del sueño infantil).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Posteriormente, me forme en alimentación infantil, son dos temas qué van de la mano y necesitaba tener toda la información para dar un servicio integral.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En todo este tiempo he ayudado a cientos de familias a mejorar sus noches, tengo todas las herramientas necesarias para ayudaros y apoyaros en esta etapa de crianza... me encantaría ser vuestra guía en este camino hacia un gran cambio que nunca olvidaréis, estoy segura de que formaremos un gran equipo...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "¿Empezamos?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2247	es	1589
Niri buruz	¡Benetan, abentura bat izan zen!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Alazne naiz, amatasunak eta lorik gabeko gauek haur-loaren aholkulari", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "izatera eraman ninduten.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nire ume zaharrenak, Inarik, 4 urte ditu. Bi urte bete arte ez genuen bi ordu baino gehiago jarraian lo egiten, bularra ematen jarraitzen nuen eskariaren arabera, eta bizirik irauteko ohea partekatzen genuen. Egia esan, biotako inork ez zuen deskantsatzen, eta ni oheratzean baino okerrago esnatzen nintzen", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo gabeko gauak etengabeak direnean, eta hurrengo egunean lan egin behar denean edo haurtxo bat zaindu behar denean, emozionalki eragiten digun oinaze edo amesgaizto bat izan daiteke. Nire kasuan, umetxoarekin egotea nekagarria zen, eta eguneko orduak amaigabeak egiten zitzaizkidan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une hartan, pandemiak harrapatu gintuen, eta nik ez nekien arren, Aia nire neskato txikiarekin haurdun nengoen. Nire gorputzak esaten zidan garaia iritsi zela, eta nire buruak ez zuen gehiago ematen, denok behar genuen lehenbailehen lo egin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Gauetan aldaketa txikiak egiten hasi ginen eta harrigarria izan zen nola egun batzuetan esnatzeak gutxitzen hasi ziren, ¡magia ematen zuen!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ezin nuen sinetsi aldaketak hainbesteko kontuarekin egin nitzakeenik. Inarik ez zuen negarrik inoiz egin, hain kontuz ibili ginen, ezen konturatu ginenerako bere gelara aldatu ahal izan genuen eta denok atseden hartzen hasi ginen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Benetan, abentura bat izan zen!! Ziurta diezazueket lo-urte horiek bizi izanak laguntzen didala enpatia izaten familiekin; izan ere, oso gaizki pasatzen da.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une horretan asko ikasi nuen eta konturatu nintzen familia asko gure egoera berean zeudela eta hobeto lo egiten lagun niezaiekeela.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Asko ikertu eta irakurri nuen loaren prozesuak ulertzeko moduei buruz. Azkenean, arlo horretan trebatzea erabaki nuen, eta Gentle Sleep Coach (haurren loaren aholkularia) egiaztagiria lortu nuen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ondoren, haurren elikaduran trebatu nintzen, eskutik helduta doazen bi gai dira, eta informazio guztia behar nuen zerbitzu integrala emateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Denbora honetan guztian, ehunka familiari lagundu diet beren gauak hobetzen, behar diren tresna guztiak ditut zuei laguntzeko eta ume-hazten ari zaretenean babesa emateko... ikaragarri gustatuko litzaidake zuen gidaria izatea inoiz ahaztuko ez duzuen aldaketa handi baterako bidean, eta ziur nago talde handi bat osatuko dugula...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "Hasiko al gara?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2248	eu	1589
sobre mí	¡Toda una aventura!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Soy Alazne, la maternidad y las noches sin dormir me llevaron a", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "formarme como asesora de sueño infantil.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mi niño mayor, Inari tiene 4 años. Hasta los dos años no dormíamos más de dos horas seguidas, continuaba dándole pecho a demanda y hacíamos colecho para sobrevivir. Realmente ninguno de los dos descansábamos y yo me despertaba peor de lo que me había acostado.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuando las noches sin dormir son constantes, y al día siguiente hay que trabajar o cuidar de un bebé puede ser un suplicio o una pesadilla que nos afecte emocionalmente. En mi caso, estar con mi bebé era agotador, y las horas del día se me hacían eternas…", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento nos sorprendió la pandemia y aunque yo no lo sabía estaba embarazada de Aia, mi niña pequeña. Mi cuerpo me decía que había llegado el momento y mi mente no daba más de si, todos necesitábamos dormir con urgencia", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Nos pusimos a hacer pequeños cambios a las noches y fue asombroso cómo en unos días comenzaron a disminuir los despertares, parecía magia!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "No me podía creer que podía hacer los cambios con tanto cuidado. Inari no lloró en ningún momento, fue todo tan cuidado que para cuando nos dimos cuenta pudimos cambiarle a su habitación y todos comenzamos a descansar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Toda una aventura!! Os puedo asegurar que el haber vivido esos años de sueño me hace empatizar con las familias, se pasa realmente mal.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento aprendí muchísimo y me di cuenta de que muchas familias estaban en nuestra misma situación y podía ayudarles a dormir mejor.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Investigué y leí muchísimo sobre las diferentes formas de entender los procesos del sueño. Finalmente decidí formarme en este ámbito y certificarme como Gentle Sleep Coach (asesora del sueño infantil).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Posteriormente, me forme en alimentación infantil, son dos temas qué van de la mano y necesitaba tener toda la información para dar un servicio integral.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En todo este tiempo he ayudado a cientos de familias a mejorar sus noches, tengo todas las herramientas necesarias para ayudaros y apoyaros en esta etapa de crianza... me encantaría ser vuestra guía en este camino hacia un gran cambio que nunca olvidaréis, estoy segura de que formaremos un gran equipo...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "¿Empezamos?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2249	es	1590
Niri buruz	¡Benetan, abentura bat izan zen!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Alazne naiz, amatasunak eta lorik gabeko gauek haur-loaren aholkulari", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "izatera eraman ninduten.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nire ume zaharrenak, Inarik, 4 urte ditu. Bi urte bete arte ez genuen bi ordu baino gehiago jarraian lo egiten, bularra ematen jarraitzen nuen eskariaren arabera, eta bizirik irauteko ohea partekatzen genuen. Egia esan, biotako inork ez zuen deskantsatzen, eta ni oheratzean baino okerrago esnatzen nintzen", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo gabeko gauak etengabeak direnean, eta hurrengo egunean lan egin behar denean edo haurtxo bat zaindu behar denean, emozionalki eragiten digun oinaze edo amesgaizto bat izan daiteke. Nire kasuan, umetxoarekin egotea nekagarria zen, eta eguneko orduak amaigabeak egiten zitzaizkidan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une hartan, pandemiak harrapatu gintuen, eta nik ez nekien arren, Aia nire neskato txikiarekin haurdun nengoen. Nire gorputzak esaten zidan garaia iritsi zela, eta nire buruak ez zuen gehiago ematen, denok behar genuen lehenbailehen lo egin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Gauetan aldaketa txikiak egiten hasi ginen eta harrigarria izan zen nola egun batzuetan esnatzeak gutxitzen hasi ziren, ¡magia ematen zuen!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ezin nuen sinetsi aldaketak hainbesteko kontuarekin egin nitzakeenik. Inarik ez zuen negarrik inoiz egin, hain kontuz ibili ginen, ezen konturatu ginenerako bere gelara aldatu ahal izan genuen eta denok atseden hartzen hasi ginen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Benetan, abentura bat izan zen!! Ziurta diezazueket lo-urte horiek bizi izanak laguntzen didala enpatia izaten familiekin; izan ere, oso gaizki pasatzen da.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une horretan asko ikasi nuen eta konturatu nintzen familia asko gure egoera berean zeudela eta hobeto lo egiten lagun niezaiekeela.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Asko ikertu eta irakurri nuen loaren prozesuak ulertzeko moduei buruz. Azkenean, arlo horretan trebatzea erabaki nuen, eta Gentle Sleep Coach (haurren loaren aholkularia) egiaztagiria lortu nuen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ondoren, haurren elikaduran trebatu nintzen, eskutik helduta doazen bi gai dira, eta informazio guztia behar nuen zerbitzu integrala emateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Denbora honetan guztian, ehunka familiari lagundu diet beren gauak hobetzen, behar diren tresna guztiak ditut zuei laguntzeko eta ume-hazten ari zaretenean babesa emateko... ikaragarri gustatuko litzaidake zuen gidaria izatea inoiz ahaztuko ez duzuen aldaketa handi baterako bidean, eta ziur nago talde handi bat osatuko dugula...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "Hasiko al gara?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2250	eu	1590
Servicios	Te ofrezco algo que realmente se adapta a tus necesidades 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué se despierta a los 30-45 min de haberlo acostado?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Sólo se duerme comiendo o en movimiento?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué no puedo dejarlo en la cuna?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Cómo puedo ayudar a mi peque para que duerma durante toda la noche?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Se despierta cada 2 horas?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si te haces alguna o todas estas preguntas, escríbeme, Te aseguro que podemos cambiarlo.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "He creado unos programas que cubren muchas de las situaciones que otros como tú han compartido conmigo, échales un vistazo, y si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Te cuento un poco más, cada programa está diseñado para cubrir unas necesidades diferentes, dependiendo del momento, de la edad, la situación, objetivos y ganas.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2339	es	1635
Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Zergatik esnatzen da oheratu eta 30-45 minutura? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zergatik ezin dut sehaskan utzi? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nola lagundu behar diot nire seme edo alabari gau osoan lo egin dezan?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Galdera hauetakoren bat edo guztiak badituzu, idatzi iezadazu. Ziurtatzen dizut alda ditzakegula.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2340	eu	1635
Mi trabajo	Un poquito más	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cada bebé es muy diferente. Su temperamento, situación, edad, dónde duerme, cómo se duerme... Todo influye, así que no puedo aplicar un único método. Estoy certificada como asesora, pero sobre todo mi experiencia me aporta una visión global de cada caso.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Es normal que no des un paso hacia el cambio por miedo a que el bebé lo pase mal. Pero confia en mi, cuando lo hacemos, es asombroso la capacidad que tienen para adaptarse y sentirás que le has hecho un regalo!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Verle dormir, por fín te hará feliz y disfrutaras de esos momentos. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2341	es	1636
Nire lana	Pixka bat gehiago	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Haur bakoitza oso desberdina da. Beren izaerak, egoerak, adinak, non lo egiten duten, nola lo hartzen duten... Dena eragiten du, beraz, ezin dut metodo bakarra aplikatu. Aholkulari ziurtatua naiz, baina batez ere, nire esperientziak kasu bakoitzaren ikuspegi holistikoa ematen dit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Normala da aldaketa bat egiteko zalantzak izatea haurra haserretzeko beldurrez. Baina sinets iezadazu, egiten dugunean, egokitzeko duten gaitasuna harrigarria da, eta opari bat eman diezula sentituko duzu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Azkenean lo egiten ikusteak zoriontsu egingo zaitu eta une horiek gozatuko dituzu.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2342	eu	1636
sobre mí	¡Toda una aventura!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Soy Alazne, la maternidad y las noches sin dormir me llevaron a", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "formarme como asesora de sueño infantil.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mi niño mayor, Inari tiene 4 años. Hasta los dos años no dormíamos más de dos horas seguidas, continuaba dándole pecho a demanda y hacíamos colecho para sobrevivir. Realmente ninguno de los dos descansábamos y yo me despertaba peor de lo que me había acostado.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuando las noches sin dormir son constantes, y al día siguiente hay que trabajar o cuidar de un bebé puede ser un suplicio o una pesadilla que nos afecte emocionalmente. En mi caso, estar con mi bebé era agotador, y las horas del día se me hacían eternas…", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento nos sorprendió la pandemia y aunque yo no lo sabía estaba embarazada de Aia, mi niña pequeña. Mi cuerpo me decía que había llegado el momento y mi mente no daba más de si, todos necesitábamos dormir con urgencia", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Nos pusimos a hacer pequeños cambios a las noches y fue asombroso cómo en unos días comenzaron a disminuir los despertares, parecía magia!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "No me podía creer que podía hacer los cambios con tanto cuidado. Inari no lloró en ningún momento, fue todo tan cuidado que para cuando nos dimos cuenta pudimos cambiarle a su habitación y todos comenzamos a descansar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Toda una aventura!! Os puedo asegurar que el haber vivido esos años de sueño me hace empatizar con las familias, se pasa realmente mal.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento aprendí muchísimo y me di cuenta de que muchas familias estaban en nuestra misma situación y podía ayudarles a dormir mejor.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Investigué y leí muchísimo sobre las diferentes formas de entender los procesos del sueño. Finalmente decidí formarme en este ámbito y certificarme como Gentle Sleep Coach (asesora del sueño infantil).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Posteriormente, me forme en alimentación infantil, son dos temas qué van de la mano y necesitaba tener toda la información para dar un servicio integral.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En todo este tiempo he ayudado a cientos de familias a mejorar sus noches, tengo todas las herramientas necesarias para ayudaros y apoyaros en esta etapa de crianza... me encantaría ser vuestra guía en este camino hacia un gran cambio que nunca olvidaréis, estoy segura de que formaremos un gran equipo...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "¿Empezamos?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2251	es	1591
Niri buruz	¡Benetan, abentura bat izan zen!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Alazne naiz, amatasunak eta lorik gabeko gauek haur-loaren aholkulari", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "izatera eraman ninduten.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nire ume zaharrenak, Inarik, 4 urte ditu. Bi urte bete arte ez genuen bi ordu baino gehiago jarraian lo egiten, bularra ematen jarraitzen nuen eskariaren arabera, eta bizirik irauteko ohea partekatzen genuen. Egia esan, biotako inork ez zuen deskantsatzen, eta ni oheratzean baino okerrago esnatzen nintzen", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo gabeko gauak etengabeak direnean, eta hurrengo egunean lan egin behar denean edo haurtxo bat zaindu behar denean, emozionalki eragiten digun oinaze edo amesgaizto bat izan daiteke. Nire kasuan, umetxoarekin egotea nekagarria zen, eta eguneko orduak amaigabeak egiten zitzaizkidan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une hartan, pandemiak harrapatu gintuen, eta nik ez nekien arren, Aia nire neskato txikiarekin haurdun nengoen. Nire gorputzak esaten zidan garaia iritsi zela, eta nire buruak ez zuen gehiago ematen, denok behar genuen lehenbailehen lo egin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Gauetan aldaketa txikiak egiten hasi ginen eta harrigarria izan zen nola egun batzuetan esnatzeak gutxitzen hasi ziren, ¡magia ematen zuen!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ezin nuen sinetsi aldaketak hainbesteko kontuarekin egin nitzakeenik. Inarik ez zuen negarrik inoiz egin, hain kontuz ibili ginen, ezen konturatu ginenerako bere gelara aldatu ahal izan genuen eta denok atseden hartzen hasi ginen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Benetan, abentura bat izan zen!! Ziurta diezazueket lo-urte horiek bizi izanak laguntzen didala enpatia izaten familiekin; izan ere, oso gaizki pasatzen da.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une horretan asko ikasi nuen eta konturatu nintzen familia asko gure egoera berean zeudela eta hobeto lo egiten lagun niezaiekeela.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Asko ikertu eta irakurri nuen loaren prozesuak ulertzeko moduei buruz. Azkenean, arlo horretan trebatzea erabaki nuen, eta Gentle Sleep Coach (haurren loaren aholkularia) egiaztagiria lortu nuen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ondoren, haurren elikaduran trebatu nintzen, eskutik helduta doazen bi gai dira, eta informazio guztia behar nuen zerbitzu integrala emateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Denbora honetan guztian, ehunka familiari lagundu diet beren gauak hobetzen, behar diren tresna guztiak ditut zuei laguntzeko eta ume-hazten ari zaretenean babesa emateko... ikaragarri gustatuko litzaidake zuen gidaria izatea inoiz ahaztuko ez duzuen aldaketa handi baterako bidean, eta ziur nago talde handi bat osatuko dugula...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "Hasiko al gara?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2252	eu	1591
\N	¡Tengo ganas de conocer tu caso! 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "El apego seguro es aquel que se crea cuando las necesidades fisiológicas y emocionales de vuestro peque siempre están atendidas. Si lo hacemos durante el día, dándole cariño, atención y apoyo en todos los momentos, no únicamente en los malos, ¿Cómo no hacerlo a la noche también? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2343	es	1637
\N	Zure kasuaren berri izateko irrikitan nago!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Gure txikiaren behar fisiologiko eta emozionalak zaintzen ditugunean, atxikimendu seguru bat lortzen dugu. Guzti hau, egunean zehar lortzen dugu; maitasuna eskeiniz, behar duenean lagunduz, bere babesleku izanda, eta ez bakarrik momentu txarretan. ¿Nola ez dugu ba, gauean ere egingo?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2344	eu	1637
Servicios	Te ofrezco algo que realmente se adapta a tus necesidades 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué se despierta a los 30-45 min de haberlo acostado?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Sólo se duerme comiendo o en movimiento?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué no puedo dejarlo en la cuna?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Cómo puedo ayudar a mi peque para que duerma durante toda la noche?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Se despierta cada 2 horas?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si te haces alguna o todas estas preguntas, escríbeme, Te aseguro que podemos cambiarlo.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "He creado unos programas que cubren muchas de las situaciones que otros como tú han compartido conmigo, échales un vistazo, y si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Te cuento un poco más, cada programa está diseñado para cubrir unas necesidades diferentes, dependiendo del momento, de la edad, la situación, objetivos y ganas.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2345	es	1638
Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Zergatik esnatzen da oheratu eta 30-45 minutura? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zergatik ezin dut sehaskan utzi? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nola lagundu behar diot nire seme edo alabari gau osoan lo egin dezan?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Galdera hauetakoren bat edo guztiak badituzu, idatzi iezadazu. Ziurtatzen dizut alda ditzakegula.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2346	eu	1638
Mi trabajo	Un poquito más	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cada bebé es muy diferente. Su temperamento, situación, edad, dónde duerme, cómo se duerme... Todo influye, así que no puedo aplicar un único método. Estoy certificada como asesora, pero sobre todo mi experiencia me aporta una visión global de cada caso.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Es normal que no des un paso hacia el cambio por miedo a que el bebé lo pase mal. Pero confia en mi, cuando lo hacemos, es asombroso la capacidad que tienen para adaptarse y sentirás que le has hecho un regalo!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Verle dormir, por fín te hará feliz y disfrutaras de esos momentos. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2347	es	1639
Nire lana	Pixka bat gehiago	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Haur bakoitza oso desberdina da. Beren izaerak, egoerak, adinak, non lo egiten duten, nola lo hartzen duten... Dena eragiten du, beraz, ezin dut metodo bakarra aplikatu. Aholkulari ziurtatua naiz, baina batez ere, nire esperientziak kasu bakoitzaren ikuspegi holistikoa ematen dit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Normala da aldaketa bat egiteko zalantzak izatea haurra haserretzeko beldurrez. Baina sinets iezadazu, egiten dugunean, egokitzeko duten gaitasuna harrigarria da, eta opari bat eman diezula sentituko duzu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Azkenean lo egiten ikusteak zoriontsu egingo zaitu eta une horiek gozatuko dituzu.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2348	eu	1639
\N	¡Tengo ganas de conocer tu caso! 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "El apego seguro es aquel que se crea cuando las necesidades fisiológicas y emocionales de vuestro peque siempre están atendidas. Si lo hacemos durante el día, dándole cariño, atención y apoyo en todos los momentos, no únicamente en los malos, ¿Cómo no hacerlo a la noche también? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2349	es	1640
Servicios	No dormir de forma continuada nos cambia la forma de vivir la maternidad.	\N	2253	es	1592
Zerbitzuak	Jarraituki lo ez egiteak amatasuna bizitzeko modua aldatzen digu. 	\N	2254	eu	1592
\N	Zure kasuaren berri izateko irrikitan nago!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Gure txikiaren behar fisiologiko eta emozionalak zaintzen ditugunean, atxikimendu seguru bat lortzen dugu. Guzti hau, egunean zehar lortzen dugu; maitasuna eskeiniz, behar duenean lagunduz, bere babesleku izanda, eta ez bakarrik momentu txarretan. ¿Nola ez dugu ba, gauean ere egingo?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2350	eu	1640
Servicios	Te ofrezco algo que realmente se adapta a tus necesidades 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué se despierta a los 30-45 min de haberlo acostado?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Sólo se duerme comiendo o en movimiento?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué no puedo dejarlo en la cuna?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Cómo puedo ayudar a mi peque para que duerma durante toda la noche?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Se despierta cada 2 horas?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si te haces alguna o todas estas preguntas, escríbeme, Te aseguro que podemos cambiarlo.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "He creado unos programas que cubren muchas de las situaciones que otros como tú han compartido conmigo, échales un vistazo, y si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Te cuento un poco más, cada programa está diseñado para cubrir unas necesidades diferentes, dependiendo del momento, de la edad, la situación, objetivos y ganas.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2351	es	1641
Mi Trabajo	Consultas	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Esta opción encajará con lo que necesitas si no quieres o no crees que necesites un plan detallado por escrito. En este caso no te enviaré un plan de sueño personalizado, pero si una guía de sueño que te servirá de guía.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hablaremos durante una hora y pondremos sobre la mesa todas tus dudas. Por mi parte te explicaré qué podéis hacer paso a paso para mejorar vuestras noches. Te recomiendo que tengas listo boli y papel para poder anotar lo más importante. Para sacar más provecho a esta videollamada, te enviaré un cuestionario previo para saber qué temas os gustaría tratar y tener información en general sobre vuestra situación actual.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Después de hacer la llamada podríais enviarme un email con alguna duda que quedase pendiente de resolver o algo que te gustaría consultar tras poner en práctica lo hablado en la llamada.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si en el plazo de un mes, aún necesitas más ayuda, podrás pagar la diferencia y tener un plan completo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2255	es	1593
Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Zergatik esnatzen da oheratu eta 30-45 minutura? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zergatik ezin dut sehaskan utzi? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nola lagundu behar diot nire seme edo alabari gau osoan lo egin dezan?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Galdera hauetakoren bat edo guztiak badituzu, idatzi iezadazu. Ziurtatzen dizut alda ditzakegula.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2352	eu	1641
Mi trabajo	Un poquito más	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cada bebé es muy diferente. Su temperamento, situación, edad, dónde duerme, cómo se duerme... Todo influye, así que no puedo aplicar un único método. Estoy certificada como asesora, pero sobre todo mi experiencia me aporta una visión global de cada caso.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Es normal que no des un paso hacia el cambio por miedo a que el bebé lo pase mal. Pero confia en mi, cuando lo hacemos, es asombroso la capacidad que tienen para adaptarse y sentirás que le has hecho un regalo!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Verle dormir, por fín te hará feliz y disfrutaras de esos momentos. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2353	es	1642
Nire lana	Pixka bat gehiago	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Haur bakoitza oso desberdina da. Beren izaerak, egoerak, adinak, non lo egiten duten, nola lo hartzen duten... Dena eragiten du, beraz, ezin dut metodo bakarra aplikatu. Aholkulari ziurtatua naiz, baina batez ere, nire esperientziak kasu bakoitzaren ikuspegi holistikoa ematen dit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Normala da aldaketa bat egiteko zalantzak izatea haurra haserretzeko beldurrez. Baina sinets iezadazu, egiten dugunean, egokitzeko duten gaitasuna harrigarria da, eta opari bat eman diezula sentituko duzu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Azkenean lo egiten ikusteak zoriontsu egingo zaitu eta une horiek gozatuko dituzu.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2354	eu	1642
\N	Talde-topaketak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera pertsonalak bateratuko ditugu, eta lagunduko dizuet ulertzen zer gertatzen den, zergatik gertatzen den eta zer aukera dituzuen. Horrez gain, gure haurtxoarentzako lo-ohitura osasungarriak sortzeko moduari buruz hitz egingo dugu, baita errutinei, lo-leihoei eta ordutegiei buruz ere. Nola aurre egin ez dakizuen egoeraren bat hobetzeko trikimailuak eta jarraibideak emango dizkizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Topaketak dendetan, elkarteetan, haurtzaindegietan, osasun-zentroetan eta abarretan egin daitezke.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero dut zuk ikaragarri ikastea, eta goza dezazula, eta hona iristean bilatzen zenituen helburuak lortzen laguntzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2378	eu	1654
Servicios	No dormir de forma continuada nos cambia la forma de vivir la maternidad.	\N	2379	es	1655
Zerbitzuak	Jarraituki lo ez egiteak amatasuna bizitzeko modua aldatzen digu. 	\N	2380	eu	1655
Nire lana	Kontsultak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Aukera hau bat etorriko da behar duzunarekin, baldin eta ez baduzu nahi edo ez baduzu uste idatzizko plan zehatz bat behar duzunik. Kasu horretan ez dizut bidaliko lo-plan pertsonalizatu bat, baina gida gisa balioko dizun lo-gida bat bai.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubetez hitz egingo dugu eta zure zalantza guztiak mahai gainean jarriko ditugu. Nik azalduko dizut zer egin dezakezuen pausoz pauso zuen gauak hobetzeko. Boligrafoa eta papera prest izatea gomendatzen dizut, garrantzitsuena idatzi ahal izateko. Bideo-dei honi etekin handiagoa ateratzeko, aldez aurretik galdetegi bat bidaliko dizut, zer gai jorratu nahiko zenituzketen jakiteko eta, oro har, zuen egungo egoerari buruzko informazioa izateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Deia egin ondoren, mezu elektroniko bat bidal zeniezadakete, argitu gabe dagoen zalantzaren batekin edo deian hitz egindakoa praktikan jarri ondoren kontsultatu nahiko zenukeen zerbaitekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baldin eta hilabeteko epean laguntza gehiago behar baduzu, aldea ordaindu eta plan oso bat eduki ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 70(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2256	eu	1593
Mi Trabajo	Consultas	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Esta opción encajará con lo que necesitas si no quieres o no crees que necesites un plan detallado por escrito. En este caso no te enviaré un plan de sueño personalizado, pero si una guía de sueño que te servirá de guía.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hablaremos durante una hora y pondremos sobre la mesa todas tus dudas. Por mi parte te explicaré qué podéis hacer paso a paso para mejorar vuestras noches. Te recomiendo que tengas listo boli y papel para poder anotar lo más importante. Para sacar más provecho a esta videollamada, te enviaré un cuestionario previo para saber qué temas os gustaría tratar y tener información en general sobre vuestra situación actual.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Después de hacer la llamada podríais enviarme un email con alguna duda que quedase pendiente de resolver o algo que te gustaría consultar tras poner en práctica lo hablado en la llamada.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si en el plazo de un mes, aún necesitas más ayuda, podrás pagar la diferencia y tener un plan completo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2381	es	1656
Nire lana	Kontsultak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Aukera hau bat etorriko da behar duzunarekin, baldin eta ez baduzu nahi edo ez baduzu uste idatzizko plan zehatz bat behar duzunik. Kasu horretan ez dizut bidaliko lo-plan pertsonalizatu bat, baina gida gisa balioko dizun lo-gida bat bai.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubetez hitz egingo dugu eta zure zalantza guztiak mahai gainean jarriko ditugu. Nik azalduko dizut zer egin dezakezuen pausoz pauso zuen gauak hobetzeko. Boligrafoa eta papera prest izatea gomendatzen dizut, garrantzitsuena idatzi ahal izateko. Bideo-dei honi etekin handiagoa ateratzeko, aldez aurretik galdetegi bat bidaliko dizut, zer gai jorratu nahiko zenituzketen jakiteko eta, oro har, zuen egungo egoerari buruzko informazioa izateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Deia egin ondoren, mezu elektroniko bat bidal zeniezadakete, argitu gabe dagoen zalantzaren batekin edo deian hitz egindakoa praktikan jarri ondoren kontsultatu nahiko zenukeen zerbaitekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baldin eta hilabeteko epean laguntza gehiago behar baduzu, aldea ordaindu eta plan oso bat eduki ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 70(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2382	eu	1656
\N	Plan de sueño personalizado con seguimiento	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si tu bebé tiene más de 6 meses y necesitas volver a descansar, te encuentras agotada y sin ánimo de llevarlo por tu cuenta este es el plan que necesitas. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Necesito estudiar vuestro caso con todos los detalles, para diseñar un plan personalizado y ajustarnos al máximos a vuestros objetivos, para eso os enviaré un cuestionario. Tras recibir vuestra respuesta al cuestionario, estableceremos una primera consulta tras la cual definiré un plan, os lo expondré en una videollamada, lo compartiremos y daremos las últimas pinceladas juntos. Si estáis de acuerdo, os lo enviaré todo por escrito y fijaremos un día para comenzar el camino. Os apoyaré en todo el proceso y haré un seguimiento diario durante 3 o 4 semanas. Si queremos adaptarnos al bebé no podemos marcar una fecha exacta. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El seguimiento será vía correo o whatsapp, estaremos en contacto diariamente y siempre que lo necesitéis citaremos una llamada. Una vez finalizado el seguimiento y haber logrado vuestros objetivos haremos una llamada y os enviaré un documento con pautas para futuras situaciones.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Consulta por videollamada para preserntar el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Plan de sueño por escrito para vuestra familia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Seguimiento durante 3 o 4semanas, diario por email o Whatsapp", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Resolución de dudas", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Conclusiones: Un resumen del proceso que habremos llevado a cabo y envío de un documento con recomendaciones para el futuro. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2383	es	1657
Servicios	No dormir de forma continuada nos cambia la forma de vivir la maternidad.	\N	2355	es	1643
Zerbitzuak	Jarraituki lo ez egiteak amatasuna bizitzeko modua aldatzen digu. 	\N	2356	eu	1643
Mi Trabajo	Consultas	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Esta opción encajará con lo que necesitas si no quieres o no crees que necesites un plan detallado por escrito. En este caso no te enviaré un plan de sueño personalizado, pero si una guía de sueño que te servirá de guía.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hablaremos durante una hora y pondremos sobre la mesa todas tus dudas. Por mi parte te explicaré qué podéis hacer paso a paso para mejorar vuestras noches. Te recomiendo que tengas listo boli y papel para poder anotar lo más importante. Para sacar más provecho a esta videollamada, te enviaré un cuestionario previo para saber qué temas os gustaría tratar y tener información en general sobre vuestra situación actual.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Después de hacer la llamada podríais enviarme un email con alguna duda que quedase pendiente de resolver o algo que te gustaría consultar tras poner en práctica lo hablado en la llamada.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si en el plazo de un mes, aún necesitas más ayuda, podrás pagar la diferencia y tener un plan completo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2357	es	1644
Nire lana	Kontsultak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Aukera hau bat etorriko da behar duzunarekin, baldin eta ez baduzu nahi edo ez baduzu uste idatzizko plan zehatz bat behar duzunik. Kasu horretan ez dizut bidaliko lo-plan pertsonalizatu bat, baina gida gisa balioko dizun lo-gida bat bai.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubetez hitz egingo dugu eta zure zalantza guztiak mahai gainean jarriko ditugu. Nik azalduko dizut zer egin dezakezuen pausoz pauso zuen gauak hobetzeko. Boligrafoa eta papera prest izatea gomendatzen dizut, garrantzitsuena idatzi ahal izateko. Bideo-dei honi etekin handiagoa ateratzeko, aldez aurretik galdetegi bat bidaliko dizut, zer gai jorratu nahiko zenituzketen jakiteko eta, oro har, zuen egungo egoerari buruzko informazioa izateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Deia egin ondoren, mezu elektroniko bat bidal zeniezadakete, argitu gabe dagoen zalantzaren batekin edo deian hitz egindakoa praktikan jarri ondoren kontsultatu nahiko zenukeen zerbaitekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baldin eta hilabeteko epean laguntza gehiago behar baduzu, aldea ordaindu eta plan oso bat eduki ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 70(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2358	eu	1644
\N	Plan de sueño personalizado con seguimiento	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si tu bebé tiene más de 6 meses y necesitas volver a descansar, te encuentras agotada y sin ánimo de llevarlo por tu cuenta este es el plan que necesitas. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Necesito estudiar vuestro caso con todos los detalles, para diseñar un plan personalizado y ajustarnos al máximos a vuestros objetivos, para eso os enviaré un cuestionario. Tras recibir vuestra respuesta al cuestionario, estableceremos una primera consulta tras la cual definiré un plan, os lo expondré en una videollamada, lo compartiremos y daremos las últimas pinceladas juntos. Si estáis de acuerdo, os lo enviaré todo por escrito y fijaremos un día para comenzar el camino. Os apoyaré en todo el proceso y haré un seguimiento diario durante 3 o 4 semanas. Si queremos adaptarnos al bebé no podemos marcar una fecha exacta. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El seguimiento será vía correo o whatsapp, estaremos en contacto diariamente y siempre que lo necesitéis citaremos una llamada. Una vez finalizado el seguimiento y haber logrado vuestros objetivos haremos una llamada y os enviaré un documento con pautas para futuras situaciones.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Consulta por videollamada para preserntar el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Plan de sueño por escrito para vuestra familia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Seguimiento durante 3 o 4semanas, diario por email o Whatsapp", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Resolución de dudas", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Conclusiones: Un resumen del proceso que habremos llevado a cabo y envío de un documento con recomendaciones para el futuro. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2359	es	1645
\N	Lo-plan pertsonalizatua, eta jarraipenarekin	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure haurtxoak 6 hilabete baino gehiago baditu eta berriro atseden hartzeko beharra baduzu, leher eginda bazaude eta zeure kabuz eramateko adorerik gabe, hauxe da behar duzun plana. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen kasua xehetasun guztiekin aztertu behar dut, plan pertsonalizatu bat diseinatzeko eta zuen helburuetara ahalik eta gehien egokitzeko. Horretarako, galdetegi bat bidaliko dizuet. Galdera- sortaren erantzuna jaso ondoren, lehenengo kontsulta bat ezarriko dugu, eta horren ondoren plan bat definituko dut, bideo-dei batean azalduko dizuet, partekatu egingo dugu eta azken zertzeladak elkarrekin emango ditugu. Ados bazaudete, dena idatziz bidaliko dizuet eta egun bat finkatuko dugu bideari ekiteko. Prozesu osoan lagunduko dizuet eta egunero jarraipena egingo dut 3 edo 4 astez. Jarraipena posta edo whatsapp bidez egingo da, egunero egongo gara", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "harremanetan eta behar duzuen guztietan dei bat egingo dugu. Jarraipena amaiturik eta zuen helburuak lortuta, dei bat egingo dugu eta dokumentu bat bidaliko dizuet etorkizuneko egoeretarako jarraibideekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- bideo-dei bidezko kontsulta, plana azaltzeko", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Idatzizko lo-plan pertsonalizatua zuen familiarentzat.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Jarraipena 3 do astez, egunero posta elektronikoz edo Whatsapp bidez", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zalantzak argitzea", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Ondorioak: egingo dugun prozesuaren laburpena, eta etorkizunerako gomendioak jasotzen dituen dokumentu bat bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 340(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2360	eu	1645
\N	Plan de sueño conmigo, pero a tu ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En un inicio este plan es similar a un plan con mi seguimiento: Haré una valoración previa, un estudio, haremos una videollamada y detallaré el plan de sueño acorde a vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero, a veces no es necesario estar en contacto diario. En ese caso, haremos una llamada 2 veces por semana durante 4 semanas; Veremos la situación, los avances, como continuar… Todo al detalle y vosotros lo iréis poniendo en práctica a vuestro ritmo. Eso sí, siempre que lo necesitéis podéis escribirme con vuestras dudas, sentimientos, avances o lo que queráis contarme. Yo seguiré muy cerquita para todo lo que necesitéis.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Y antes de finalizar el plan, haremos otra videollamada para hablar de la situación final, posibles dudas y os daré algunos tips para el futuro.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2361	es	1646
\N	Amets plana nirekin baina zuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zerbitzu hau nire jarraipenarekin eskeitzen dudan planaren antzekoa da. Zuen kasua aztertuko dut, bideodei batean azalduko dizuet eta idatziko plan bat garatuko dut. Desberdintasuna jarraipenean datza.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Batzuetan ez da beharrezkoa egunero-egunero harremanetan egotea eta astean bitan dei bat eginez familia hobeto moldatzen da. Beti egongo naiz zuei laguntzeko prest, hau da, edozein momentutan hitzegin behar baduzue: zuen sentimenduei buruz, galderak, dudak edo beste edozer buruz, hortxe izango nauzue. Kasu honetan ere 3-4 astetan egongo gara elkarrekin aldaketak pixkanaka, txikiak behar duen arabera, aurrera eramateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera ondotzat ematen dugunean, azkeneko bideodei bat egingo dugu, etorkizunean gertatu daitezkeen egoerei nola aurre egin eta zuen zalantzak argitzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 295(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2362	eu	1646
\N	Plan a vuestro ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero… Si te encuentras con ganas, aún no has llegado al agotamiento total y te queda algo de energía para hacerlo por tu cuenta, entonces puedes elegir un plan sin seguimiento.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En este caso, también os enviaré un cuestionario inicial para poder estudiar el caso en detalle. Al recibirlo haremos una videollamada para explicaros hasta la última puntilla de cómo llevarlo a cabo, paso a paso y os lo enviaré todo todito por escrito.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Siempre tendréis la opción de contratar el seguimiento. Si no podéis avanzar, os habéis bloqueado, agotado, tenéis dudas… tenéis la opción de solicitar una llamada para reconducir o ayudaros en el punto que estéis, (25 euros).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Consulta de una hora (presencial, por teléfono o por zoom), para explicar el plan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Envío de plan de sueño.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Podréis enviarme un email en un plazo de un mes con las dudas que os puedan surgir al poner en marcha el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}], "direction": null, "textFormat": 1}}	2363	es	1647
\N	 Plana zeuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baina...gogoz bazaude, oraindik ez bazara erabat agortu eta energia pixka bat geratzen bazaizu zure kabuz egiteko; orduan, jarraipenik gabeko plan bat aukera dezakezu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Kasu horretan ere hasierako galdetegi bat bidaliko dizuet, kasua zehatz-mehatz aztertu ahal izateko. Jasotzean, bideo-dei bat egingo dugu, prozesua zehatz-mehatz azaltzeko, urratsez urrats, eta den-dena idatziz bidaliko dizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Beti izango duzue jarraipena kontratatzeko aukera. Ezin baduzue aurrera egin, blokeatu bazarete, edo agortu bazarete, edo zalantzak badituzue...aukera daukazue dei bat eskatzeko, zaudeten puntutik aurrera prozesua birbideratzeko edo aurrera egiten laguntzeko (25 euro).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubeteko kontsulta (aurrez aurrekoa, telefonoz edo zoom bidez), plana azaltzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo-plana bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "E-mail bat bidali ahal izango didazue hilabeteko epean, plana abian jartzean sor dakizkizuekeen zalantzekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 100(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2364	eu	1647
\N	Encuentros grupales	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pondremos en común las diferentes situaciones personales y os ayudaré a empezar a entender qué ocurre, porqué ocurre y qué opciones tenéis. También hablaremos sobre cómo crear unos hábitos de sueño saludables para nuestro bebe, sobre rutinas, ventanas de sueño y horarios. Os daré trucos y pautas para mejorar alguna situación que no sepáis como afrontar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Los encuentros pueden ser en tiendas, asociaciones, guarderías, centros de salud, etc.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero que aprendas muchísimo, que lo disfrutes y que te ayude a alcanzar los objetivos que buscabas cuando accediste.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2365	es	1648
\N	Talde-topaketak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera pertsonalak bateratuko ditugu, eta lagunduko dizuet ulertzen zer gertatzen den, zergatik gertatzen den eta zer aukera dituzuen. Horrez gain, gure haurtxoarentzako lo-ohitura osasungarriak sortzeko moduari buruz hitz egingo dugu, baita errutinei, lo-leihoei eta ordutegiei buruz ere. Nola aurre egin ez dakizuen egoeraren bat hobetzeko trikimailuak eta jarraibideak emango dizkizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Topaketak dendetan, elkarteetan, haurtzaindegietan, osasun-zentroetan eta abarretan egin daitezke.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero dut zuk ikaragarri ikastea, eta goza dezazula, eta hona iristean bilatzen zenituen helburuak lortzen laguntzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2366	eu	1648
\N	Lo-plan pertsonalizatua, eta jarraipenarekin	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure haurtxoak 6 hilabete baino gehiago baditu eta berriro atseden hartzeko beharra baduzu, leher eginda bazaude eta zeure kabuz eramateko adorerik gabe, hauxe da behar duzun plana. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen kasua xehetasun guztiekin aztertu behar dut, plan pertsonalizatu bat diseinatzeko eta zuen helburuetara ahalik eta gehien egokitzeko. Horretarako, galdetegi bat bidaliko dizuet. Galdera- sortaren erantzuna jaso ondoren, lehenengo kontsulta bat ezarriko dugu, eta horren ondoren plan bat definituko dut, bideo-dei batean azalduko dizuet, partekatu egingo dugu eta azken zertzeladak elkarrekin emango ditugu. Ados bazaudete, dena idatziz bidaliko dizuet eta egun bat finkatuko dugu bideari ekiteko. Prozesu osoan lagunduko dizuet eta egunero jarraipena egingo dut 3 edo 4 astez. Jarraipena posta edo whatsapp bidez egingo da, egunero egongo gara", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "harremanetan eta behar duzuen guztietan dei bat egingo dugu. Jarraipena amaiturik eta zuen helburuak lortuta, dei bat egingo dugu eta dokumentu bat bidaliko dizuet etorkizuneko egoeretarako jarraibideekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- bideo-dei bidezko kontsulta, plana azaltzeko", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Idatzizko lo-plan pertsonalizatua zuen familiarentzat.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Jarraipena 3 do astez, egunero posta elektronikoz edo Whatsapp bidez", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zalantzak argitzea", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Ondorioak: egingo dugun prozesuaren laburpena, eta etorkizunerako gomendioak jasotzen dituen dokumentu bat bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 340(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2384	eu	1657
\N	Plan de sueño conmigo, pero a tu ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En un inicio este plan es similar a un plan con mi seguimiento: Haré una valoración previa, un estudio, haremos una videollamada y detallaré el plan de sueño acorde a vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero, a veces no es necesario estar en contacto diario. En ese caso, haremos una llamada 2 veces por semana durante 4 semanas; Veremos la situación, los avances, como continuar… Todo al detalle y vosotros lo iréis poniendo en práctica a vuestro ritmo. Eso sí, siempre que lo necesitéis podéis escribirme con vuestras dudas, sentimientos, avances o lo que queráis contarme. Yo seguiré muy cerquita para todo lo que necesitéis.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Y antes de finalizar el plan, haremos otra videollamada para hablar de la situación final, posibles dudas y os daré algunos tips para el futuro.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2385	es	1658
\N	Plan de sueño personalizado con seguimiento	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si tu bebé tiene más de 6 meses y necesitas volver a descansar, te encuentras agotada y sin ánimo de llevarlo por tu cuenta este es el plan que necesitas. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Necesito estudiar vuestro caso con todos los detalles, para diseñar un plan personalizado y ajustarnos al máximos a vuestros objetivos, para eso os enviaré un cuestionario. Tras recibir vuestra respuesta al cuestionario, estableceremos una primera consulta tras la cual definiré un plan, os lo expondré en una videollamada, lo compartiremos y daremos las últimas pinceladas juntos. Si estáis de acuerdo, os lo enviaré todo por escrito y fijaremos un día para comenzar el camino. Os apoyaré en todo el proceso y haré un seguimiento diario durante 3 o 4 semanas. Si queremos adaptarnos al bebé no podemos marcar una fecha exacta. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El seguimiento será vía correo o whatsapp, estaremos en contacto diariamente y siempre que lo necesitéis citaremos una llamada. Una vez finalizado el seguimiento y haber logrado vuestros objetivos haremos una llamada y os enviaré un documento con pautas para futuras situaciones.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Consulta por videollamada para preserntar el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Plan de sueño por escrito para vuestra familia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Seguimiento durante 3 o 4semanas, diario por email o Whatsapp", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Resolución de dudas", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Conclusiones: Un resumen del proceso que habremos llevado a cabo y envío de un documento con recomendaciones para el futuro. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2257	es	1594
Servicios	No dormir de forma continuada nos cambia la forma de vivir la maternidad.	\N	2367	es	1649
Zerbitzuak	Jarraituki lo ez egiteak amatasuna bizitzeko modua aldatzen digu. 	\N	2368	eu	1649
\N	Lo-plan pertsonalizatua, eta jarraipenarekin	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure haurtxoak 6 hilabete baino gehiago baditu eta berriro atseden hartzeko beharra baduzu, leher eginda bazaude eta zeure kabuz eramateko adorerik gabe, hauxe da behar duzun plana. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen kasua xehetasun guztiekin aztertu behar dut, plan pertsonalizatu bat diseinatzeko eta zuen helburuetara ahalik eta gehien egokitzeko. Horretarako, galdetegi bat bidaliko dizuet. Galdera- sortaren erantzuna jaso ondoren, lehenengo kontsulta bat ezarriko dugu, eta horren ondoren plan bat definituko dut, bideo-dei batean azalduko dizuet, partekatu egingo dugu eta azken zertzeladak elkarrekin emango ditugu. Ados bazaudete, dena idatziz bidaliko dizuet eta egun bat finkatuko dugu bideari ekiteko. Prozesu osoan lagunduko dizuet eta egunero jarraipena egingo dut 3 edo 4 astez. Jarraipena posta edo whatsapp bidez egingo da, egunero egongo gara", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "harremanetan eta behar duzuen guztietan dei bat egingo dugu. Jarraipena amaiturik eta zuen helburuak lortuta, dei bat egingo dugu eta dokumentu bat bidaliko dizuet etorkizuneko egoeretarako jarraibideekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- bideo-dei bidezko kontsulta, plana azaltzeko", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Idatzizko lo-plan pertsonalizatua zuen familiarentzat.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Jarraipena 3 do astez, egunero posta elektronikoz edo Whatsapp bidez", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zalantzak argitzea", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Ondorioak: egingo dugun prozesuaren laburpena, eta etorkizunerako gomendioak jasotzen dituen dokumentu bat bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 340(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2258	eu	1594
\N	Plan de sueño conmigo, pero a tu ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En un inicio este plan es similar a un plan con mi seguimiento: Haré una valoración previa, un estudio, haremos una videollamada y detallaré el plan de sueño acorde a vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero, a veces no es necesario estar en contacto diario. En ese caso, haremos una llamada 2 veces por semana durante 4 semanas; Veremos la situación, los avances, como continuar… Todo al detalle y vosotros lo iréis poniendo en práctica a vuestro ritmo. Eso sí, siempre que lo necesitéis podéis escribirme con vuestras dudas, sentimientos, avances o lo que queráis contarme. Yo seguiré muy cerquita para todo lo que necesitéis.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Y antes de finalizar el plan, haremos otra videollamada para hablar de la situación final, posibles dudas y os daré algunos tips para el futuro.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2259	es	1595
\N	Amets plana nirekin baina zuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zerbitzu hau nire jarraipenarekin eskeitzen dudan planaren antzekoa da. Zuen kasua aztertuko dut, bideodei batean azalduko dizuet eta idatziko plan bat garatuko dut. Desberdintasuna jarraipenean datza.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Batzuetan ez da beharrezkoa egunero-egunero harremanetan egotea eta astean bitan dei bat eginez familia hobeto moldatzen da. Beti egongo naiz zuei laguntzeko prest, hau da, edozein momentutan hitzegin behar baduzue: zuen sentimenduei buruz, galderak, dudak edo beste edozer buruz, hortxe izango nauzue. Kasu honetan ere 3-4 astetan egongo gara elkarrekin aldaketak pixkanaka, txikiak behar duen arabera, aurrera eramateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera ondotzat ematen dugunean, azkeneko bideodei bat egingo dugu, etorkizunean gertatu daitezkeen egoerei nola aurre egin eta zuen zalantzak argitzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 295(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2260	eu	1595
Mi Trabajo	Consultas	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Esta opción encajará con lo que necesitas si no quieres o no crees que necesites un plan detallado por escrito. En este caso no te enviaré un plan de sueño personalizado, pero si una guía de sueño que te servirá de guía.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hablaremos durante una hora y pondremos sobre la mesa todas tus dudas. Por mi parte te explicaré qué podéis hacer paso a paso para mejorar vuestras noches. Te recomiendo que tengas listo boli y papel para poder anotar lo más importante. Para sacar más provecho a esta videollamada, te enviaré un cuestionario previo para saber qué temas os gustaría tratar y tener información en general sobre vuestra situación actual.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Después de hacer la llamada podríais enviarme un email con alguna duda que quedase pendiente de resolver o algo que te gustaría consultar tras poner en práctica lo hablado en la llamada.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si en el plazo de un mes, aún necesitas más ayuda, podrás pagar la diferencia y tener un plan completo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2369	es	1650
Nire lana	Kontsultak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Aukera hau bat etorriko da behar duzunarekin, baldin eta ez baduzu nahi edo ez baduzu uste idatzizko plan zehatz bat behar duzunik. Kasu horretan ez dizut bidaliko lo-plan pertsonalizatu bat, baina gida gisa balioko dizun lo-gida bat bai.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubetez hitz egingo dugu eta zure zalantza guztiak mahai gainean jarriko ditugu. Nik azalduko dizut zer egin dezakezuen pausoz pauso zuen gauak hobetzeko. Boligrafoa eta papera prest izatea gomendatzen dizut, garrantzitsuena idatzi ahal izateko. Bideo-dei honi etekin handiagoa ateratzeko, aldez aurretik galdetegi bat bidaliko dizut, zer gai jorratu nahiko zenituzketen jakiteko eta, oro har, zuen egungo egoerari buruzko informazioa izateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Deia egin ondoren, mezu elektroniko bat bidal zeniezadakete, argitu gabe dagoen zalantzaren batekin edo deian hitz egindakoa praktikan jarri ondoren kontsultatu nahiko zenukeen zerbaitekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baldin eta hilabeteko epean laguntza gehiago behar baduzu, aldea ordaindu eta plan oso bat eduki ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 70(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2370	eu	1650
\N	Plan a vuestro ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero… Si te encuentras con ganas, aún no has llegado al agotamiento total y te queda algo de energía para hacerlo por tu cuenta, entonces puedes elegir un plan sin seguimiento.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En este caso, también os enviaré un cuestionario inicial para poder estudiar el caso en detalle. Al recibirlo haremos una videollamada para explicaros hasta la última puntilla de cómo llevarlo a cabo, paso a paso y os lo enviaré todo todito por escrito.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Siempre tendréis la opción de contratar el seguimiento. Si no podéis avanzar, os habéis bloqueado, agotado, tenéis dudas… tenéis la opción de solicitar una llamada para reconducir o ayudaros en el punto que estéis, (25 euros).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Consulta de una hora (presencial, por teléfono o por zoom), para explicar el plan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Envío de plan de sueño.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Podréis enviarme un email en un plazo de un mes con las dudas que os puedan surgir al poner en marcha el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}], "direction": null, "textFormat": 1}}	2261	es	1596
\N	 Plana zeuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baina...gogoz bazaude, oraindik ez bazara erabat agortu eta energia pixka bat geratzen bazaizu zure kabuz egiteko; orduan, jarraipenik gabeko plan bat aukera dezakezu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Kasu horretan ere hasierako galdetegi bat bidaliko dizuet, kasua zehatz-mehatz aztertu ahal izateko. Jasotzean, bideo-dei bat egingo dugu, prozesua zehatz-mehatz azaltzeko, urratsez urrats, eta den-dena idatziz bidaliko dizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Beti izango duzue jarraipena kontratatzeko aukera. Ezin baduzue aurrera egin, blokeatu bazarete, edo agortu bazarete, edo zalantzak badituzue...aukera daukazue dei bat eskatzeko, zaudeten puntutik aurrera prozesua birbideratzeko edo aurrera egiten laguntzeko (25 euro).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubeteko kontsulta (aurrez aurrekoa, telefonoz edo zoom bidez), plana azaltzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo-plana bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "E-mail bat bidali ahal izango didazue hilabeteko epean, plana abian jartzean sor dakizkizuekeen zalantzekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 100(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2262	eu	1596
\N	Encuentros grupales	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pondremos en común las diferentes situaciones personales y os ayudaré a empezar a entender qué ocurre, porqué ocurre y qué opciones tenéis. También hablaremos sobre cómo crear unos hábitos de sueño saludables para nuestro bebe, sobre rutinas, ventanas de sueño y horarios. Os daré trucos y pautas para mejorar alguna situación que no sepáis como afrontar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Los encuentros pueden ser en tiendas, asociaciones, guarderías, centros de salud, etc.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero que aprendas muchísimo, que lo disfrutes y que te ayude a alcanzar los objetivos que buscabas cuando accediste.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2263	es	1597
\N	Talde-topaketak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera pertsonalak bateratuko ditugu, eta lagunduko dizuet ulertzen zer gertatzen den, zergatik gertatzen den eta zer aukera dituzuen. Horrez gain, gure haurtxoarentzako lo-ohitura osasungarriak sortzeko moduari buruz hitz egingo dugu, baita errutinei, lo-leihoei eta ordutegiei buruz ere. Nola aurre egin ez dakizuen egoeraren bat hobetzeko trikimailuak eta jarraibideak emango dizkizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Topaketak dendetan, elkarteetan, haurtzaindegietan, osasun-zentroetan eta abarretan egin daitezke.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero dut zuk ikaragarri ikastea, eta goza dezazula, eta hona iristean bilatzen zenituen helburuak lortzen laguntzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2264	eu	1597
Servicios	No dormir de forma continuada nos cambia la forma de vivir la maternidad.	\N	2265	es	1598
Zerbitzuak	Jarraituki lo ez egiteak amatasuna bizitzeko modua aldatzen digu. 	\N	2266	eu	1598
Mi Trabajo	Consultas	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Esta opción encajará con lo que necesitas si no quieres o no crees que necesites un plan detallado por escrito. En este caso no te enviaré un plan de sueño personalizado, pero si una guía de sueño que te servirá de guía.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hablaremos durante una hora y pondremos sobre la mesa todas tus dudas. Por mi parte te explicaré qué podéis hacer paso a paso para mejorar vuestras noches. Te recomiendo que tengas listo boli y papel para poder anotar lo más importante. Para sacar más provecho a esta videollamada, te enviaré un cuestionario previo para saber qué temas os gustaría tratar y tener información en general sobre vuestra situación actual.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Después de hacer la llamada podríais enviarme un email con alguna duda que quedase pendiente de resolver o algo que te gustaría consultar tras poner en práctica lo hablado en la llamada.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si en el plazo de un mes, aún necesitas más ayuda, podrás pagar la diferencia y tener un plan completo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2267	es	1599
Nire lana	Kontsultak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Aukera hau bat etorriko da behar duzunarekin, baldin eta ez baduzu nahi edo ez baduzu uste idatzizko plan zehatz bat behar duzunik. Kasu horretan ez dizut bidaliko lo-plan pertsonalizatu bat, baina gida gisa balioko dizun lo-gida bat bai.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubetez hitz egingo dugu eta zure zalantza guztiak mahai gainean jarriko ditugu. Nik azalduko dizut zer egin dezakezuen pausoz pauso zuen gauak hobetzeko. Boligrafoa eta papera prest izatea gomendatzen dizut, garrantzitsuena idatzi ahal izateko. Bideo-dei honi etekin handiagoa ateratzeko, aldez aurretik galdetegi bat bidaliko dizut, zer gai jorratu nahiko zenituzketen jakiteko eta, oro har, zuen egungo egoerari buruzko informazioa izateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Deia egin ondoren, mezu elektroniko bat bidal zeniezadakete, argitu gabe dagoen zalantzaren batekin edo deian hitz egindakoa praktikan jarri ondoren kontsultatu nahiko zenukeen zerbaitekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baldin eta hilabeteko epean laguntza gehiago behar baduzu, aldea ordaindu eta plan oso bat eduki ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 70(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2268	eu	1599
\N	Plan de sueño personalizado con seguimiento	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si tu bebé tiene más de 6 meses y necesitas volver a descansar, te encuentras agotada y sin ánimo de llevarlo por tu cuenta este es el plan que necesitas. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Necesito estudiar vuestro caso con todos los detalles, para diseñar un plan personalizado y ajustarnos al máximos a vuestros objetivos, para eso os enviaré un cuestionario. Tras recibir vuestra respuesta al cuestionario, estableceremos una primera consulta tras la cual definiré un plan, os lo expondré en una videollamada, lo compartiremos y daremos las últimas pinceladas juntos. Si estáis de acuerdo, os lo enviaré todo por escrito y fijaremos un día para comenzar el camino. Os apoyaré en todo el proceso y haré un seguimiento diario durante 3 o 4 semanas. Si queremos adaptarnos al bebé no podemos marcar una fecha exacta. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El seguimiento será vía correo o whatsapp, estaremos en contacto diariamente y siempre que lo necesitéis citaremos una llamada. Una vez finalizado el seguimiento y haber logrado vuestros objetivos haremos una llamada y os enviaré un documento con pautas para futuras situaciones.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Consulta por videollamada para preserntar el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Plan de sueño por escrito para vuestra familia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Seguimiento durante 3 o 4semanas, diario por email o Whatsapp", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Resolución de dudas", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Conclusiones: Un resumen del proceso que habremos llevado a cabo y envío de un documento con recomendaciones para el futuro. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2269	es	1600
\N	Lo-plan pertsonalizatua, eta jarraipenarekin	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure haurtxoak 6 hilabete baino gehiago baditu eta berriro atseden hartzeko beharra baduzu, leher eginda bazaude eta zeure kabuz eramateko adorerik gabe, hauxe da behar duzun plana. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen kasua xehetasun guztiekin aztertu behar dut, plan pertsonalizatu bat diseinatzeko eta zuen helburuetara ahalik eta gehien egokitzeko. Horretarako, galdetegi bat bidaliko dizuet. Galdera- sortaren erantzuna jaso ondoren, lehenengo kontsulta bat ezarriko dugu, eta horren ondoren plan bat definituko dut, bideo-dei batean azalduko dizuet, partekatu egingo dugu eta azken zertzeladak elkarrekin emango ditugu. Ados bazaudete, dena idatziz bidaliko dizuet eta egun bat finkatuko dugu bideari ekiteko. Prozesu osoan lagunduko dizuet eta egunero jarraipena egingo dut 3 edo 4 astez. Jarraipena posta edo whatsapp bidez egingo da, egunero egongo gara", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "harremanetan eta behar duzuen guztietan dei bat egingo dugu. Jarraipena amaiturik eta zuen helburuak lortuta, dei bat egingo dugu eta dokumentu bat bidaliko dizuet etorkizuneko egoeretarako jarraibideekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- bideo-dei bidezko kontsulta, plana azaltzeko", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Idatzizko lo-plan pertsonalizatua zuen familiarentzat.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Jarraipena 3 do astez, egunero posta elektronikoz edo Whatsapp bidez", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zalantzak argitzea", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Ondorioak: egingo dugun prozesuaren laburpena, eta etorkizunerako gomendioak jasotzen dituen dokumentu bat bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 340(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2270	eu	1600
\N	Plan de sueño conmigo, pero a tu ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En un inicio este plan es similar a un plan con mi seguimiento: Haré una valoración previa, un estudio, haremos una videollamada y detallaré el plan de sueño acorde a vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero, a veces no es necesario estar en contacto diario. En ese caso, haremos una llamada 2 veces por semana durante 4 semanas; Veremos la situación, los avances, como continuar… Todo al detalle y vosotros lo iréis poniendo en práctica a vuestro ritmo. Eso sí, siempre que lo necesitéis podéis escribirme con vuestras dudas, sentimientos, avances o lo que queráis contarme. Yo seguiré muy cerquita para todo lo que necesitéis.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Y antes de finalizar el plan, haremos otra videollamada para hablar de la situación final, posibles dudas y os daré algunos tips para el futuro.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2271	es	1601
\N	Amets plana nirekin baina zuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zerbitzu hau nire jarraipenarekin eskeitzen dudan planaren antzekoa da. Zuen kasua aztertuko dut, bideodei batean azalduko dizuet eta idatziko plan bat garatuko dut. Desberdintasuna jarraipenean datza.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Batzuetan ez da beharrezkoa egunero-egunero harremanetan egotea eta astean bitan dei bat eginez familia hobeto moldatzen da. Beti egongo naiz zuei laguntzeko prest, hau da, edozein momentutan hitzegin behar baduzue: zuen sentimenduei buruz, galderak, dudak edo beste edozer buruz, hortxe izango nauzue. Kasu honetan ere 3-4 astetan egongo gara elkarrekin aldaketak pixkanaka, txikiak behar duen arabera, aurrera eramateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera ondotzat ematen dugunean, azkeneko bideodei bat egingo dugu, etorkizunean gertatu daitezkeen egoerei nola aurre egin eta zuen zalantzak argitzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 295(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2272	eu	1601
\N	Plan a vuestro ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero… Si te encuentras con ganas, aún no has llegado al agotamiento total y te queda algo de energía para hacerlo por tu cuenta, entonces puedes elegir un plan sin seguimiento.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En este caso, también os enviaré un cuestionario inicial para poder estudiar el caso en detalle. Al recibirlo haremos una videollamada para explicaros hasta la última puntilla de cómo llevarlo a cabo, paso a paso y os lo enviaré todo todito por escrito.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Siempre tendréis la opción de contratar el seguimiento. Si no podéis avanzar, os habéis bloqueado, agotado, tenéis dudas… tenéis la opción de solicitar una llamada para reconducir o ayudaros en el punto que estéis, (25 euros).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Consulta de una hora (presencial, por teléfono o por zoom), para explicar el plan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Envío de plan de sueño.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Podréis enviarme un email en un plazo de un mes con las dudas que os puedan surgir al poner en marcha el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}], "direction": null, "textFormat": 1}}	2273	es	1602
\N	 Plana zeuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baina...gogoz bazaude, oraindik ez bazara erabat agortu eta energia pixka bat geratzen bazaizu zure kabuz egiteko; orduan, jarraipenik gabeko plan bat aukera dezakezu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Kasu horretan ere hasierako galdetegi bat bidaliko dizuet, kasua zehatz-mehatz aztertu ahal izateko. Jasotzean, bideo-dei bat egingo dugu, prozesua zehatz-mehatz azaltzeko, urratsez urrats, eta den-dena idatziz bidaliko dizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Beti izango duzue jarraipena kontratatzeko aukera. Ezin baduzue aurrera egin, blokeatu bazarete, edo agortu bazarete, edo zalantzak badituzue...aukera daukazue dei bat eskatzeko, zaudeten puntutik aurrera prozesua birbideratzeko edo aurrera egiten laguntzeko (25 euro).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubeteko kontsulta (aurrez aurrekoa, telefonoz edo zoom bidez), plana azaltzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo-plana bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "E-mail bat bidali ahal izango didazue hilabeteko epean, plana abian jartzean sor dakizkizuekeen zalantzekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 100(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2274	eu	1602
\N	Encuentros grupales	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pondremos en común las diferentes situaciones personales y os ayudaré a empezar a entender qué ocurre, porqué ocurre y qué opciones tenéis. También hablaremos sobre cómo crear unos hábitos de sueño saludables para nuestro bebe, sobre rutinas, ventanas de sueño y horarios. Os daré trucos y pautas para mejorar alguna situación que no sepáis como afrontar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Los encuentros pueden ser en tiendas, asociaciones, guarderías, centros de salud, etc.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero que aprendas muchísimo, que lo disfrutes y que te ayude a alcanzar los objetivos que buscabas cuando accediste.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2275	es	1603
\N	Talde-topaketak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera pertsonalak bateratuko ditugu, eta lagunduko dizuet ulertzen zer gertatzen den, zergatik gertatzen den eta zer aukera dituzuen. Horrez gain, gure haurtxoarentzako lo-ohitura osasungarriak sortzeko moduari buruz hitz egingo dugu, baita errutinei, lo-leihoei eta ordutegiei buruz ere. Nola aurre egin ez dakizuen egoeraren bat hobetzeko trikimailuak eta jarraibideak emango dizkizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Topaketak dendetan, elkarteetan, haurtzaindegietan, osasun-zentroetan eta abarretan egin daitezke.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero dut zuk ikaragarri ikastea, eta goza dezazula, eta hona iristean bilatzen zenituen helburuak lortzen laguntzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2276	eu	1603
\N	Amets plana nirekin baina zuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zerbitzu hau nire jarraipenarekin eskeitzen dudan planaren antzekoa da. Zuen kasua aztertuko dut, bideodei batean azalduko dizuet eta idatziko plan bat garatuko dut. Desberdintasuna jarraipenean datza.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Batzuetan ez da beharrezkoa egunero-egunero harremanetan egotea eta astean bitan dei bat eginez familia hobeto moldatzen da. Beti egongo naiz zuei laguntzeko prest, hau da, edozein momentutan hitzegin behar baduzue: zuen sentimenduei buruz, galderak, dudak edo beste edozer buruz, hortxe izango nauzue. Kasu honetan ere 3-4 astetan egongo gara elkarrekin aldaketak pixkanaka, txikiak behar duen arabera, aurrera eramateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera ondotzat ematen dugunean, azkeneko bideodei bat egingo dugu, etorkizunean gertatu daitezkeen egoerei nola aurre egin eta zuen zalantzak argitzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 295(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2386	eu	1658
\N	Plan de sueño personalizado con seguimiento	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si tu bebé tiene más de 6 meses y necesitas volver a descansar, te encuentras agotada y sin ánimo de llevarlo por tu cuenta este es el plan que necesitas. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Necesito estudiar vuestro caso con todos los detalles, para diseñar un plan personalizado y ajustarnos al máximos a vuestros objetivos, para eso os enviaré un cuestionario. Tras recibir vuestra respuesta al cuestionario, estableceremos una primera consulta tras la cual definiré un plan, os lo expondré en una videollamada, lo compartiremos y daremos las últimas pinceladas juntos. Si estáis de acuerdo, os lo enviaré todo por escrito y fijaremos un día para comenzar el camino. Os apoyaré en todo el proceso y haré un seguimiento diario durante 3 o 4 semanas. Si queremos adaptarnos al bebé no podemos marcar una fecha exacta. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El seguimiento será vía correo o whatsapp, estaremos en contacto diariamente y siempre que lo necesitéis citaremos una llamada. Una vez finalizado el seguimiento y haber logrado vuestros objetivos haremos una llamada y os enviaré un documento con pautas para futuras situaciones.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Consulta por videollamada para preserntar el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Plan de sueño por escrito para vuestra familia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Seguimiento durante 3 o 4semanas, diario por email o Whatsapp", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Resolución de dudas", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Conclusiones: Un resumen del proceso que habremos llevado a cabo y envío de un documento con recomendaciones para el futuro. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2371	es	1651
\N	Lo-plan pertsonalizatua, eta jarraipenarekin	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure haurtxoak 6 hilabete baino gehiago baditu eta berriro atseden hartzeko beharra baduzu, leher eginda bazaude eta zeure kabuz eramateko adorerik gabe, hauxe da behar duzun plana. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen kasua xehetasun guztiekin aztertu behar dut, plan pertsonalizatu bat diseinatzeko eta zuen helburuetara ahalik eta gehien egokitzeko. Horretarako, galdetegi bat bidaliko dizuet. Galdera- sortaren erantzuna jaso ondoren, lehenengo kontsulta bat ezarriko dugu, eta horren ondoren plan bat definituko dut, bideo-dei batean azalduko dizuet, partekatu egingo dugu eta azken zertzeladak elkarrekin emango ditugu. Ados bazaudete, dena idatziz bidaliko dizuet eta egun bat finkatuko dugu bideari ekiteko. Prozesu osoan lagunduko dizuet eta egunero jarraipena egingo dut 3 edo 4 astez. Jarraipena posta edo whatsapp bidez egingo da, egunero egongo gara", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "harremanetan eta behar duzuen guztietan dei bat egingo dugu. Jarraipena amaiturik eta zuen helburuak lortuta, dei bat egingo dugu eta dokumentu bat bidaliko dizuet etorkizuneko egoeretarako jarraibideekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- bideo-dei bidezko kontsulta, plana azaltzeko", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Idatzizko lo-plan pertsonalizatua zuen familiarentzat.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Jarraipena 3 do astez, egunero posta elektronikoz edo Whatsapp bidez", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zalantzak argitzea", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Ondorioak: egingo dugun prozesuaren laburpena, eta etorkizunerako gomendioak jasotzen dituen dokumentu bat bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 340(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2372	eu	1651
\N	Plan de sueño conmigo, pero a tu ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En un inicio este plan es similar a un plan con mi seguimiento: Haré una valoración previa, un estudio, haremos una videollamada y detallaré el plan de sueño acorde a vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero, a veces no es necesario estar en contacto diario. En ese caso, haremos una llamada 2 veces por semana durante 4 semanas; Veremos la situación, los avances, como continuar… Todo al detalle y vosotros lo iréis poniendo en práctica a vuestro ritmo. Eso sí, siempre que lo necesitéis podéis escribirme con vuestras dudas, sentimientos, avances o lo que queráis contarme. Yo seguiré muy cerquita para todo lo que necesitéis.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Y antes de finalizar el plan, haremos otra videollamada para hablar de la situación final, posibles dudas y os daré algunos tips para el futuro.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2373	es	1652
\N	Plan a vuestro ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero… Si te encuentras con ganas, aún no has llegado al agotamiento total y te queda algo de energía para hacerlo por tu cuenta, entonces puedes elegir un plan sin seguimiento.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En este caso, también os enviaré un cuestionario inicial para poder estudiar el caso en detalle. Al recibirlo haremos una videollamada para explicaros hasta la última puntilla de cómo llevarlo a cabo, paso a paso y os lo enviaré todo todito por escrito.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Siempre tendréis la opción de contratar el seguimiento. Si no podéis avanzar, os habéis bloqueado, agotado, tenéis dudas… tenéis la opción de solicitar una llamada para reconducir o ayudaros en el punto que estéis, (25 euros).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Consulta de una hora (presencial, por teléfono o por zoom), para explicar el plan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Envío de plan de sueño.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Podréis enviarme un email en un plazo de un mes con las dudas que os puedan surgir al poner en marcha el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}], "direction": null, "textFormat": 1}}	2387	es	1659
\N	 Plana zeuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baina...gogoz bazaude, oraindik ez bazara erabat agortu eta energia pixka bat geratzen bazaizu zure kabuz egiteko; orduan, jarraipenik gabeko plan bat aukera dezakezu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Kasu horretan ere hasierako galdetegi bat bidaliko dizuet, kasua zehatz-mehatz aztertu ahal izateko. Jasotzean, bideo-dei bat egingo dugu, prozesua zehatz-mehatz azaltzeko, urratsez urrats, eta den-dena idatziz bidaliko dizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Beti izango duzue jarraipena kontratatzeko aukera. Ezin baduzue aurrera egin, blokeatu bazarete, edo agortu bazarete, edo zalantzak badituzue...aukera daukazue dei bat eskatzeko, zaudeten puntutik aurrera prozesua birbideratzeko edo aurrera egiten laguntzeko (25 euro).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubeteko kontsulta (aurrez aurrekoa, telefonoz edo zoom bidez), plana azaltzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo-plana bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "E-mail bat bidali ahal izango didazue hilabeteko epean, plana abian jartzean sor dakizkizuekeen zalantzekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 100(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	2388	eu	1659
\N	Encuentros grupales	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pondremos en común las diferentes situaciones personales y os ayudaré a empezar a entender qué ocurre, porqué ocurre y qué opciones tenéis. También hablaremos sobre cómo crear unos hábitos de sueño saludables para nuestro bebe, sobre rutinas, ventanas de sueño y horarios. Os daré trucos y pautas para mejorar alguna situación que no sepáis como afrontar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Los encuentros pueden ser en tiendas, asociaciones, guarderías, centros de salud, etc.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero que aprendas muchísimo, que lo disfrutes y que te ayude a alcanzar los objetivos que buscabas cuando accediste.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2389	es	1660
\N	Talde-topaketak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera pertsonalak bateratuko ditugu, eta lagunduko dizuet ulertzen zer gertatzen den, zergatik gertatzen den eta zer aukera dituzuen. Horrez gain, gure haurtxoarentzako lo-ohitura osasungarriak sortzeko moduari buruz hitz egingo dugu, baita errutinei, lo-leihoei eta ordutegiei buruz ere. Nola aurre egin ez dakizuen egoeraren bat hobetzeko trikimailuak eta jarraibideak emango dizkizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Topaketak dendetan, elkarteetan, haurtzaindegietan, osasun-zentroetan eta abarretan egin daitezke.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero dut zuk ikaragarri ikastea, eta goza dezazula, eta hona iristean bilatzen zenituen helburuak lortzen laguntzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2390	eu	1660
\.


--
-- Data for Name: _pages_v_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_media_block (_order, _parent_id, _path, id, media_id, _uuid, block_name) FROM stdin;
1	193	version.layout	548	19	696bc5218ca202ca715c5ff6	imagen
1	194	version.layout	549	19	696bc5218ca202ca715c5ff6	imagen
2	195	version.layout	550	18	696a7df5333a3f60a45f5ea4	Imagen
6	195	version.layout	551	24	69695bb4692dd42525b58232	Media
2	196	version.layout	552	18	696a7df5333a3f60a45f5ea4	Imagen
6	196	version.layout	553	24	69695bb4692dd42525b58232	Media
2	197	version.layout	554	27	696b78b06af15f6661f81ef6	Imagen
2	198	version.layout	555	27	696b78b06af15f6661f81ef6	Imagen
2	199	version.layout	556	27	696b78b06af15f6661f81ef6	Imagen
5	200	version.layout	557	26	696b966404f2573779325246	Imagen
8	200	version.layout	558	26	696b979904f2573779325248	Imagen
11	200	version.layout	559	26	696b98a804f257377932524a	Imagen
14	200	version.layout	560	26	696bc14f8ca202ca715c5ff2	Imagen
16	200	version.layout	561	26	696bc0d08ca202ca715c5ff0	Imagen
5	201	version.layout	562	26	696b966404f2573779325246	Imagen
8	201	version.layout	563	26	696b979904f2573779325248	Imagen
2	113	version.layout	370	18	696a7df5333a3f60a45f5ea4	Imagen
6	113	version.layout	371	24	69695bb4692dd42525b58232	Media
11	201	version.layout	564	26	696b98a804f257377932524a	Imagen
14	201	version.layout	565	26	696bc14f8ca202ca715c5ff2	Imagen
16	201	version.layout	566	26	696bc0d08ca202ca715c5ff0	Imagen
5	202	version.layout	567	26	696b966404f2573779325246	Imagen
8	202	version.layout	568	26	696b979904f2573779325248	Imagen
11	202	version.layout	569	26	696b98a804f257377932524a	Imagen
14	202	version.layout	570	26	696bc14f8ca202ca715c5ff2	Imagen
16	202	version.layout	571	26	696bc0d08ca202ca715c5ff0	Imagen
1	203	version.layout	572	19	696bc5218ca202ca715c5ff6	imagen
1	204	version.layout	573	19	696bc5218ca202ca715c5ff6	imagen
1	205	version.layout	574	19	696bc5218ca202ca715c5ff6	imagen
2	120	version.layout	407	27	696b78b06af15f6661f81ef6	Imagen
2	121	version.layout	408	27	696b78b06af15f6661f81ef6	Imagen
2	122	version.layout	409	27	696b78b06af15f6661f81ef6	Imagen
1	182	version.layout	522	19	696bc5218ca202ca715c5ff6	imagen
1	183	version.layout	523	19	696bc5218ca202ca715c5ff6	imagen
1	184	version.layout	524	19	696bc5218ca202ca715c5ff6	imagen
1	185	version.layout	525	19	696bc5218ca202ca715c5ff6	imagen
2	186	version.layout	530	18	696a7df5333a3f60a45f5ea4	Imagen
6	186	version.layout	531	24	69695bb4692dd42525b58232	Media
2	187	version.layout	532	18	696a7df5333a3f60a45f5ea4	Imagen
6	187	version.layout	533	24	69695bb4692dd42525b58232	Media
2	188	version.layout	535	27	696b78b06af15f6661f81ef6	Imagen
2	189	version.layout	536	27	696b78b06af15f6661f81ef6	Imagen
2	190	version.layout	537	27	696b78b06af15f6661f81ef6	Imagen
5	191	version.layout	538	26	696b966404f2573779325246	Imagen
8	191	version.layout	539	26	696b979904f2573779325248	Imagen
11	191	version.layout	540	26	696b98a804f257377932524a	Imagen
14	191	version.layout	541	26	696bc14f8ca202ca715c5ff2	Imagen
16	191	version.layout	542	26	696bc0d08ca202ca715c5ff0	Imagen
5	192	version.layout	543	26	696b966404f2573779325246	Imagen
8	192	version.layout	544	26	696b979904f2573779325248	Imagen
11	192	version.layout	545	26	696b98a804f257377932524a	Imagen
14	192	version.layout	546	26	696bc14f8ca202ca715c5ff2	Imagen
16	192	version.layout	547	26	696bc0d08ca202ca715c5ff0	Imagen
2	206	version.layout	575	18	696a7df5333a3f60a45f5ea4	Imagen
6	206	version.layout	576	24	69695bb4692dd42525b58232	Media
2	207	version.layout	577	18	696a7df5333a3f60a45f5ea4	Imagen
6	207	version.layout	578	24	69695bb4692dd42525b58232	Media
2	208	version.layout	579	18	696a7df5333a3f60a45f5ea4	Imagen
6	208	version.layout	580	24	69695bb4692dd42525b58232	Media
2	209	version.layout	581	18	696a7df5333a3f60a45f5ea4	Imagen
6	209	version.layout	582	24	69695bb4692dd42525b58232	Media
5	210	version.layout	583	26	696b966404f2573779325246	Imagen
8	210	version.layout	584	26	696b979904f2573779325248	Imagen
11	210	version.layout	585	26	696b98a804f257377932524a	Imagen
14	210	version.layout	586	26	696bc14f8ca202ca715c5ff2	Imagen
16	210	version.layout	587	26	696bc0d08ca202ca715c5ff0	Imagen
5	211	version.layout	588	26	696b966404f2573779325246	Imagen
8	211	version.layout	589	26	696b979904f2573779325248	Imagen
11	211	version.layout	590	26	696b98a804f257377932524a	Imagen
14	211	version.layout	591	26	696bc14f8ca202ca715c5ff2	Imagen
16	211	version.layout	592	26	696bc0d08ca202ca715c5ff0	Imagen
5	212	version.layout	593	26	696b966404f2573779325246	Imagen
8	212	version.layout	594	26	696b979904f2573779325248	Imagen
11	212	version.layout	595	26	696b98a804f257377932524a	Imagen
14	212	version.layout	596	26	696bc14f8ca202ca715c5ff2	Imagen
16	212	version.layout	597	26	696bc0d08ca202ca715c5ff0	Imagen
1	213	version.layout	598	19	696bc5218ca202ca715c5ff6	imagen
2	214	version.layout	599	27	696b78b06af15f6661f81ef6	Imagen
5	215	version.layout	600	26	696b966404f2573779325246	Imagen
8	215	version.layout	601	26	696b979904f2573779325248	Imagen
11	215	version.layout	602	26	696b98a804f257377932524a	Imagen
14	215	version.layout	603	26	696bc14f8ca202ca715c5ff2	Imagen
16	215	version.layout	604	26	696bc0d08ca202ca715c5ff0	Imagen
2	216	version.layout	605	18	696a7df5333a3f60a45f5ea4	Imagen
6	216	version.layout	606	24	69695bb4692dd42525b58232	Media
5	217	version.layout	607	26	696b966404f2573779325246	Imagen
8	217	version.layout	608	26	696b979904f2573779325248	Imagen
11	217	version.layout	609	26	696b98a804f257377932524a	Imagen
14	217	version.layout	610	26	696bc14f8ca202ca715c5ff2	Imagen
16	217	version.layout	611	26	696bc0d08ca202ca715c5ff0	Imagen
\.


--
-- Data for Name: _pages_v_blocks_opinion_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_opinion_block (_order, _parent_id, _path, id, _uuid, block_name, enable_section_title, enable_title, enable_rich_text) FROM stdin;
7	195	version.layout	223	69695cb84068806204c29c11	Opiniones	t	t	t
7	196	version.layout	224	69695cb84068806204c29c11	Opiniones	t	t	t
7	206	version.layout	225	69695cb84068806204c29c11	Opiniones	t	t	t
7	207	version.layout	226	69695cb84068806204c29c11	Opiniones	t	t	t
7	208	version.layout	227	69695cb84068806204c29c11	Opiniones	t	t	t
7	209	version.layout	228	69695cb84068806204c29c11	Opiniones	t	t	t
7	216	version.layout	229	69695cb84068806204c29c11	Opiniones	t	t	t
7	113	version.layout	218	69695cb84068806204c29c11	Opiniones	t	t	t
7	186	version.layout	221	69695cb84068806204c29c11	Opiniones	t	t	t
7	187	version.layout	222	69695cb84068806204c29c11	Opiniones	t	t	t
\.


--
-- Data for Name: _pages_v_blocks_opinion_block_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_opinion_block_locales (section_title, title, rich_text, id, _locale, _parent_id) FROM stdin;
Casos de exito	Opiniones, la verdad verdadera	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hay una frase que se repite siempre cuándo terminamos un proceso; ¡Qué pena no haberte conocido antes!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	84	es	221
Arrakasta-istorioak	Iritziak, benetako egia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bada esaldi bat prozesu bat amaitzen dugunean beti errepikatzen dena; zer pena zu lehenago ez ezagutu izana!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	85	eu	221
Casos de exito	Opiniones, la verdad verdadera	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hay una frase que se repite siempre cuándo terminamos un proceso; ¡Qué pena no haberte conocido antes!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	86	es	222
Arrakasta-istorioak	Iritziak, benetako egia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bada esaldi bat prozesu bat amaitzen dugunean beti errepikatzen dena; zer pena zu lehenago ez ezagutu izana!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	87	eu	222
Casos de exito	Opiniones, la verdad verdadera	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hay una frase que se repite siempre cuándo terminamos un proceso; ¡Qué pena no haberte conocido antes!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	88	es	223
Arrakasta-istorioak	Iritziak, benetako egia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bada esaldi bat prozesu bat amaitzen dugunean beti errepikatzen dena; zer pena zu lehenago ez ezagutu izana!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	89	eu	223
Casos de exito	Opiniones, la verdad verdadera	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hay una frase que se repite siempre cuándo terminamos un proceso; ¡Qué pena no haberte conocido antes!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	90	es	224
Arrakasta-istorioak	Iritziak, benetako egia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bada esaldi bat prozesu bat amaitzen dugunean beti errepikatzen dena; zer pena zu lehenago ez ezagutu izana!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	91	eu	224
Casos de exito	Opiniones, la verdad verdadera	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hay una frase que se repite siempre cuándo terminamos un proceso; ¡Qué pena no haberte conocido antes!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	92	es	225
Arrakasta-istorioak	Iritziak, benetako egia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bada esaldi bat prozesu bat amaitzen dugunean beti errepikatzen dena; zer pena zu lehenago ez ezagutu izana!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	93	eu	225
Casos de exito	Opiniones, la verdad verdadera	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hay una frase que se repite siempre cuándo terminamos un proceso; ¡Qué pena no haberte conocido antes!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	78	es	218
Arrakasta-istorioak	Iritziak, benetako egia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bada esaldi bat prozesu bat amaitzen dugunean beti errepikatzen dena; zer pena zu lehenago ez ezagutu izana!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	79	eu	218
Casos de exito	Opiniones, la verdad verdadera	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hay una frase que se repite siempre cuándo terminamos un proceso; ¡Qué pena no haberte conocido antes!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	94	es	226
Arrakasta-istorioak	Iritziak, benetako egia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bada esaldi bat prozesu bat amaitzen dugunean beti errepikatzen dena; zer pena zu lehenago ez ezagutu izana!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	95	eu	226
Casos de exito	Opiniones, la verdad verdadera	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hay una frase que se repite siempre cuándo terminamos un proceso; ¡Qué pena no haberte conocido antes!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	96	es	227
Arrakasta-istorioak	Iritziak, benetako egia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bada esaldi bat prozesu bat amaitzen dugunean beti errepikatzen dena; zer pena zu lehenago ez ezagutu izana!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	97	eu	227
Casos de exito	Opiniones, la verdad verdadera	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hay una frase que se repite siempre cuándo terminamos un proceso; ¡Qué pena no haberte conocido antes!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	98	es	228
Arrakasta-istorioak	Iritziak, benetako egia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bada esaldi bat prozesu bat amaitzen dugunean beti errepikatzen dena; zer pena zu lehenago ez ezagutu izana!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	99	eu	228
Casos de exito	Opiniones, la verdad verdadera	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hay una frase que se repite siempre cuándo terminamos un proceso; ¡Qué pena no haberte conocido antes!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	100	es	229
Arrakasta-istorioak	Iritziak, benetako egia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bada esaldi bat prozesu bat amaitzen dugunean beti errepikatzen dena; zer pena zu lehenago ez ezagutu izana!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	101	eu	229
\.


--
-- Data for Name: _pages_v_blocks_opinion_block_opinions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_opinion_block_opinions (_order, _parent_id, id, media_id, _uuid) FROM stdin;
1	221	633	25	69695d114068806204c29c13
2	221	634	25	69695da54068806204c29c15
3	221	635	25	69695dbc4068806204c29c17
1	222	636	25	69695d114068806204c29c13
2	222	637	25	69695da54068806204c29c15
3	222	638	25	69695dbc4068806204c29c17
1	225	645	25	69695d114068806204c29c13
2	225	646	25	69695da54068806204c29c15
3	225	647	25	69695dbc4068806204c29c17
1	229	657	25	69695d114068806204c29c13
2	229	658	25	69695da54068806204c29c15
3	229	659	25	69695dbc4068806204c29c17
1	223	639	25	69695d114068806204c29c13
2	223	640	25	69695da54068806204c29c15
3	223	641	25	69695dbc4068806204c29c17
1	224	642	25	69695d114068806204c29c13
2	224	643	25	69695da54068806204c29c15
3	224	644	25	69695dbc4068806204c29c17
1	226	648	25	69695d114068806204c29c13
2	226	649	25	69695da54068806204c29c15
3	226	650	25	69695dbc4068806204c29c17
1	227	651	25	69695d114068806204c29c13
1	218	624	25	69695d114068806204c29c13
2	218	625	25	69695da54068806204c29c15
3	218	626	25	69695dbc4068806204c29c17
2	227	652	25	69695da54068806204c29c15
3	227	653	25	69695dbc4068806204c29c17
1	228	654	25	69695d114068806204c29c13
2	228	655	25	69695da54068806204c29c15
3	228	656	25	69695dbc4068806204c29c17
\.


--
-- Data for Name: _pages_v_blocks_opinion_block_opinions_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_opinion_block_opinions_locales (opinion, id, _locale, _parent_id) FROM stdin;
Muchas gracias por tu tiempo, tu dedicación y tu profesionalidad. Me he sentido muy acompañada en este proceso, lo que nos ha ayudado a estar seguros de los pasos que íbamos dando. Siento que nos has dado las herramientas necesarias para poder progresar con el sueño de Ivet nosotros solos. De verdad, muchas gracias, nos has ayudado mucho. Ivet, 7 meses	248	es	657
'Eskerrik asko zure denbora, dedikazio eta profesionaltasunagatik. Oso lagundua sentitu naiz prozesu honetan, eta horrek lagundu digu ematen genituen pausoez ziur egoten. Sentitzen dut beharrezko tresnak eman dizkiguzula Iveten loarekin aurrera egin ahal izateko. Benetan, eskerrik asko, asko lagundu diguzu. Ivet, 7 hilabete',	249	eu	657
No pensábamos que podríamos llegar a dormir más de dos horas seguidas y sin tener que darle pecho en todos los despertares. Nos has ayudado a tener un orden de alimentación y sueño y ahora nuestro pequeño no está todo el día irritable. Decirte que siempre formarás parte de esta familia a la que has ayudado muchísimo. Pablo 13 meses	250	es	658
'Ez genuen uste bi ordu jarraian baino gehiago lo egin genezakeenik, esnatze guztietan bularra eman beharrik izan gabe. Elikadura eta lo ordena bat izaten lagundu diguzu, eta orain gure txikia ez da egun osoan haserre egoten. Esan nahi dizugu asko lagundu diozun familia honetako kide izango zarela beti. Pablo, 13 hilabete',	251	eu	658
Gracias por tu cercanía y hacernos sentir tan cómodos. Has hecho que el cambio a su habitación sea algo divertido, lo ha aceptado sin ningún problema. Con los cambios en los horarios, rutinas y hábitos de sueño que nos has dado le hemos ayudado a descansar mucho mejor. Gracias por todo. Irune, 2 años	252	es	659
'Eskerrik asko zure hurbiltasunagatik eta hain eroso sentiarazteagatik. Beraren logelarako aldaketa dibertigarri egin duzu, arazorik gabe onartu du. Eman dizkiguzun ordutegi, errutina eta lo ohituren aldaketekin askoz hobeto atseden hartzen lagundu diogu. Mila esker guztiagatik. Irune, 2 urte',	253	eu	659
Muchas gracias por tu tiempo, tu dedicación y tu profesionalidad. Me he sentido muy acompañada en este proceso, lo que nos ha ayudado a estar seguros de los pasos que íbamos dando. Siento que nos has dado las herramientas necesarias para poder progresar con el sueño de Ivet nosotros solos. De verdad, muchas gracias, nos has ayudado mucho. Ivet, 7 meses	182	es	624
'Eskerrik asko zure denbora, dedikazio eta profesionaltasunagatik. Oso lagundua sentitu naiz prozesu honetan, eta horrek lagundu digu ematen genituen pausoez ziur egoten. Sentitzen dut beharrezko tresnak eman dizkiguzula Iveten loarekin aurrera egin ahal izateko. Benetan, eskerrik asko, asko lagundu diguzu. Ivet, 7 hilabete',	183	eu	624
No pensábamos que podríamos llegar a dormir más de dos horas seguidas y sin tener que darle pecho en todos los despertares. Nos has ayudado a tener un orden de alimentación y sueño y ahora nuestro pequeño no está todo el día irritable. Decirte que siempre formarás parte de esta familia a la que has ayudado muchísimo. Pablo 13 meses	184	es	625
'Ez genuen uste bi ordu jarraian baino gehiago lo egin genezakeenik, esnatze guztietan bularra eman beharrik izan gabe. Elikadura eta lo ordena bat izaten lagundu diguzu, eta orain gure txikia ez da egun osoan haserre egoten. Esan nahi dizugu asko lagundu diozun familia honetako kide izango zarela beti. Pablo, 13 hilabete',	185	eu	625
Gracias por tu cercanía y hacernos sentir tan cómodos. Has hecho que el cambio a su habitación sea algo divertido, lo ha aceptado sin ningún problema. Con los cambios en los horarios, rutinas y hábitos de sueño que nos has dado le hemos ayudado a descansar mucho mejor. Gracias por todo. Irune, 2 años	186	es	626
'Eskerrik asko zure hurbiltasunagatik eta hain eroso sentiarazteagatik. Beraren logelarako aldaketa dibertigarri egin duzu, arazorik gabe onartu du. Eman dizkiguzun ordutegi, errutina eta lo ohituren aldaketekin askoz hobeto atseden hartzen lagundu diogu. Mila esker guztiagatik. Irune, 2 urte',	187	eu	626
Muchas gracias por tu tiempo, tu dedicación y tu profesionalidad. Me he sentido muy acompañada en este proceso, lo que nos ha ayudado a estar seguros de los pasos que íbamos dando. Siento que nos has dado las herramientas necesarias para poder progresar con el sueño de Ivet nosotros solos. De verdad, muchas gracias, nos has ayudado mucho. Ivet, 7 meses	200	es	633
'Eskerrik asko zure denbora, dedikazio eta profesionaltasunagatik. Oso lagundua sentitu naiz prozesu honetan, eta horrek lagundu digu ematen genituen pausoez ziur egoten. Sentitzen dut beharrezko tresnak eman dizkiguzula Iveten loarekin aurrera egin ahal izateko. Benetan, eskerrik asko, asko lagundu diguzu. Ivet, 7 hilabete',	201	eu	633
No pensábamos que podríamos llegar a dormir más de dos horas seguidas y sin tener que darle pecho en todos los despertares. Nos has ayudado a tener un orden de alimentación y sueño y ahora nuestro pequeño no está todo el día irritable. Decirte que siempre formarás parte de esta familia a la que has ayudado muchísimo. Pablo 13 meses	202	es	634
'Ez genuen uste bi ordu jarraian baino gehiago lo egin genezakeenik, esnatze guztietan bularra eman beharrik izan gabe. Elikadura eta lo ordena bat izaten lagundu diguzu, eta orain gure txikia ez da egun osoan haserre egoten. Esan nahi dizugu asko lagundu diozun familia honetako kide izango zarela beti. Pablo, 13 hilabete',	203	eu	634
Gracias por tu cercanía y hacernos sentir tan cómodos. Has hecho que el cambio a su habitación sea algo divertido, lo ha aceptado sin ningún problema. Con los cambios en los horarios, rutinas y hábitos de sueño que nos has dado le hemos ayudado a descansar mucho mejor. Gracias por todo. Irune, 2 años	204	es	635
'Eskerrik asko zure hurbiltasunagatik eta hain eroso sentiarazteagatik. Beraren logelarako aldaketa dibertigarri egin duzu, arazorik gabe onartu du. Eman dizkiguzun ordutegi, errutina eta lo ohituren aldaketekin askoz hobeto atseden hartzen lagundu diogu. Mila esker guztiagatik. Irune, 2 urte',	205	eu	635
Muchas gracias por tu tiempo, tu dedicación y tu profesionalidad. Me he sentido muy acompañada en este proceso, lo que nos ha ayudado a estar seguros de los pasos que íbamos dando. Siento que nos has dado las herramientas necesarias para poder progresar con el sueño de Ivet nosotros solos. De verdad, muchas gracias, nos has ayudado mucho. Ivet, 7 meses	206	es	636
'Eskerrik asko zure denbora, dedikazio eta profesionaltasunagatik. Oso lagundua sentitu naiz prozesu honetan, eta horrek lagundu digu ematen genituen pausoez ziur egoten. Sentitzen dut beharrezko tresnak eman dizkiguzula Iveten loarekin aurrera egin ahal izateko. Benetan, eskerrik asko, asko lagundu diguzu. Ivet, 7 hilabete',	207	eu	636
No pensábamos que podríamos llegar a dormir más de dos horas seguidas y sin tener que darle pecho en todos los despertares. Nos has ayudado a tener un orden de alimentación y sueño y ahora nuestro pequeño no está todo el día irritable. Decirte que siempre formarás parte de esta familia a la que has ayudado muchísimo. Pablo 13 meses	208	es	637
'Ez genuen uste bi ordu jarraian baino gehiago lo egin genezakeenik, esnatze guztietan bularra eman beharrik izan gabe. Elikadura eta lo ordena bat izaten lagundu diguzu, eta orain gure txikia ez da egun osoan haserre egoten. Esan nahi dizugu asko lagundu diozun familia honetako kide izango zarela beti. Pablo, 13 hilabete',	209	eu	637
Gracias por tu cercanía y hacernos sentir tan cómodos. Has hecho que el cambio a su habitación sea algo divertido, lo ha aceptado sin ningún problema. Con los cambios en los horarios, rutinas y hábitos de sueño que nos has dado le hemos ayudado a descansar mucho mejor. Gracias por todo. Irune, 2 años	210	es	638
'Eskerrik asko zure hurbiltasunagatik eta hain eroso sentiarazteagatik. Beraren logelarako aldaketa dibertigarri egin duzu, arazorik gabe onartu du. Eman dizkiguzun ordutegi, errutina eta lo ohituren aldaketekin askoz hobeto atseden hartzen lagundu diogu. Mila esker guztiagatik. Irune, 2 urte',	211	eu	638
Muchas gracias por tu tiempo, tu dedicación y tu profesionalidad. Me he sentido muy acompañada en este proceso, lo que nos ha ayudado a estar seguros de los pasos que íbamos dando. Siento que nos has dado las herramientas necesarias para poder progresar con el sueño de Ivet nosotros solos. De verdad, muchas gracias, nos has ayudado mucho. Ivet, 7 meses	212	es	639
'Eskerrik asko zure denbora, dedikazio eta profesionaltasunagatik. Oso lagundua sentitu naiz prozesu honetan, eta horrek lagundu digu ematen genituen pausoez ziur egoten. Sentitzen dut beharrezko tresnak eman dizkiguzula Iveten loarekin aurrera egin ahal izateko. Benetan, eskerrik asko, asko lagundu diguzu. Ivet, 7 hilabete',	213	eu	639
No pensábamos que podríamos llegar a dormir más de dos horas seguidas y sin tener que darle pecho en todos los despertares. Nos has ayudado a tener un orden de alimentación y sueño y ahora nuestro pequeño no está todo el día irritable. Decirte que siempre formarás parte de esta familia a la que has ayudado muchísimo. Pablo 13 meses	214	es	640
'Ez genuen uste bi ordu jarraian baino gehiago lo egin genezakeenik, esnatze guztietan bularra eman beharrik izan gabe. Elikadura eta lo ordena bat izaten lagundu diguzu, eta orain gure txikia ez da egun osoan haserre egoten. Esan nahi dizugu asko lagundu diozun familia honetako kide izango zarela beti. Pablo, 13 hilabete',	215	eu	640
Gracias por tu cercanía y hacernos sentir tan cómodos. Has hecho que el cambio a su habitación sea algo divertido, lo ha aceptado sin ningún problema. Con los cambios en los horarios, rutinas y hábitos de sueño que nos has dado le hemos ayudado a descansar mucho mejor. Gracias por todo. Irune, 2 años	216	es	641
'Eskerrik asko zure hurbiltasunagatik eta hain eroso sentiarazteagatik. Beraren logelarako aldaketa dibertigarri egin duzu, arazorik gabe onartu du. Eman dizkiguzun ordutegi, errutina eta lo ohituren aldaketekin askoz hobeto atseden hartzen lagundu diogu. Mila esker guztiagatik. Irune, 2 urte',	217	eu	641
Muchas gracias por tu tiempo, tu dedicación y tu profesionalidad. Me he sentido muy acompañada en este proceso, lo que nos ha ayudado a estar seguros de los pasos que íbamos dando. Siento que nos has dado las herramientas necesarias para poder progresar con el sueño de Ivet nosotros solos. De verdad, muchas gracias, nos has ayudado mucho. Ivet, 7 meses	218	es	642
'Eskerrik asko zure denbora, dedikazio eta profesionaltasunagatik. Oso lagundua sentitu naiz prozesu honetan, eta horrek lagundu digu ematen genituen pausoez ziur egoten. Sentitzen dut beharrezko tresnak eman dizkiguzula Iveten loarekin aurrera egin ahal izateko. Benetan, eskerrik asko, asko lagundu diguzu. Ivet, 7 hilabete',	219	eu	642
No pensábamos que podríamos llegar a dormir más de dos horas seguidas y sin tener que darle pecho en todos los despertares. Nos has ayudado a tener un orden de alimentación y sueño y ahora nuestro pequeño no está todo el día irritable. Decirte que siempre formarás parte de esta familia a la que has ayudado muchísimo. Pablo 13 meses	220	es	643
'Ez genuen uste bi ordu jarraian baino gehiago lo egin genezakeenik, esnatze guztietan bularra eman beharrik izan gabe. Elikadura eta lo ordena bat izaten lagundu diguzu, eta orain gure txikia ez da egun osoan haserre egoten. Esan nahi dizugu asko lagundu diozun familia honetako kide izango zarela beti. Pablo, 13 hilabete',	221	eu	643
Gracias por tu cercanía y hacernos sentir tan cómodos. Has hecho que el cambio a su habitación sea algo divertido, lo ha aceptado sin ningún problema. Con los cambios en los horarios, rutinas y hábitos de sueño que nos has dado le hemos ayudado a descansar mucho mejor. Gracias por todo. Irune, 2 años	222	es	644
'Eskerrik asko zure hurbiltasunagatik eta hain eroso sentiarazteagatik. Beraren logelarako aldaketa dibertigarri egin duzu, arazorik gabe onartu du. Eman dizkiguzun ordutegi, errutina eta lo ohituren aldaketekin askoz hobeto atseden hartzen lagundu diogu. Mila esker guztiagatik. Irune, 2 urte',	223	eu	644
Muchas gracias por tu tiempo, tu dedicación y tu profesionalidad. Me he sentido muy acompañada en este proceso, lo que nos ha ayudado a estar seguros de los pasos que íbamos dando. Siento que nos has dado las herramientas necesarias para poder progresar con el sueño de Ivet nosotros solos. De verdad, muchas gracias, nos has ayudado mucho. Ivet, 7 meses	224	es	645
'Eskerrik asko zure denbora, dedikazio eta profesionaltasunagatik. Oso lagundua sentitu naiz prozesu honetan, eta horrek lagundu digu ematen genituen pausoez ziur egoten. Sentitzen dut beharrezko tresnak eman dizkiguzula Iveten loarekin aurrera egin ahal izateko. Benetan, eskerrik asko, asko lagundu diguzu. Ivet, 7 hilabete',	225	eu	645
No pensábamos que podríamos llegar a dormir más de dos horas seguidas y sin tener que darle pecho en todos los despertares. Nos has ayudado a tener un orden de alimentación y sueño y ahora nuestro pequeño no está todo el día irritable. Decirte que siempre formarás parte de esta familia a la que has ayudado muchísimo. Pablo 13 meses	226	es	646
'Ez genuen uste bi ordu jarraian baino gehiago lo egin genezakeenik, esnatze guztietan bularra eman beharrik izan gabe. Elikadura eta lo ordena bat izaten lagundu diguzu, eta orain gure txikia ez da egun osoan haserre egoten. Esan nahi dizugu asko lagundu diozun familia honetako kide izango zarela beti. Pablo, 13 hilabete',	227	eu	646
Gracias por tu cercanía y hacernos sentir tan cómodos. Has hecho que el cambio a su habitación sea algo divertido, lo ha aceptado sin ningún problema. Con los cambios en los horarios, rutinas y hábitos de sueño que nos has dado le hemos ayudado a descansar mucho mejor. Gracias por todo. Irune, 2 años	228	es	647
'Eskerrik asko zure hurbiltasunagatik eta hain eroso sentiarazteagatik. Beraren logelarako aldaketa dibertigarri egin duzu, arazorik gabe onartu du. Eman dizkiguzun ordutegi, errutina eta lo ohituren aldaketekin askoz hobeto atseden hartzen lagundu diogu. Mila esker guztiagatik. Irune, 2 urte',	229	eu	647
Muchas gracias por tu tiempo, tu dedicación y tu profesionalidad. Me he sentido muy acompañada en este proceso, lo que nos ha ayudado a estar seguros de los pasos que íbamos dando. Siento que nos has dado las herramientas necesarias para poder progresar con el sueño de Ivet nosotros solos. De verdad, muchas gracias, nos has ayudado mucho. Ivet, 7 meses	230	es	648
'Eskerrik asko zure denbora, dedikazio eta profesionaltasunagatik. Oso lagundua sentitu naiz prozesu honetan, eta horrek lagundu digu ematen genituen pausoez ziur egoten. Sentitzen dut beharrezko tresnak eman dizkiguzula Iveten loarekin aurrera egin ahal izateko. Benetan, eskerrik asko, asko lagundu diguzu. Ivet, 7 hilabete',	231	eu	648
No pensábamos que podríamos llegar a dormir más de dos horas seguidas y sin tener que darle pecho en todos los despertares. Nos has ayudado a tener un orden de alimentación y sueño y ahora nuestro pequeño no está todo el día irritable. Decirte que siempre formarás parte de esta familia a la que has ayudado muchísimo. Pablo 13 meses	232	es	649
'Ez genuen uste bi ordu jarraian baino gehiago lo egin genezakeenik, esnatze guztietan bularra eman beharrik izan gabe. Elikadura eta lo ordena bat izaten lagundu diguzu, eta orain gure txikia ez da egun osoan haserre egoten. Esan nahi dizugu asko lagundu diozun familia honetako kide izango zarela beti. Pablo, 13 hilabete',	233	eu	649
Gracias por tu cercanía y hacernos sentir tan cómodos. Has hecho que el cambio a su habitación sea algo divertido, lo ha aceptado sin ningún problema. Con los cambios en los horarios, rutinas y hábitos de sueño que nos has dado le hemos ayudado a descansar mucho mejor. Gracias por todo. Irune, 2 años	234	es	650
'Eskerrik asko zure hurbiltasunagatik eta hain eroso sentiarazteagatik. Beraren logelarako aldaketa dibertigarri egin duzu, arazorik gabe onartu du. Eman dizkiguzun ordutegi, errutina eta lo ohituren aldaketekin askoz hobeto atseden hartzen lagundu diogu. Mila esker guztiagatik. Irune, 2 urte',	235	eu	650
Muchas gracias por tu tiempo, tu dedicación y tu profesionalidad. Me he sentido muy acompañada en este proceso, lo que nos ha ayudado a estar seguros de los pasos que íbamos dando. Siento que nos has dado las herramientas necesarias para poder progresar con el sueño de Ivet nosotros solos. De verdad, muchas gracias, nos has ayudado mucho. Ivet, 7 meses	236	es	651
'Eskerrik asko zure denbora, dedikazio eta profesionaltasunagatik. Oso lagundua sentitu naiz prozesu honetan, eta horrek lagundu digu ematen genituen pausoez ziur egoten. Sentitzen dut beharrezko tresnak eman dizkiguzula Iveten loarekin aurrera egin ahal izateko. Benetan, eskerrik asko, asko lagundu diguzu. Ivet, 7 hilabete',	237	eu	651
No pensábamos que podríamos llegar a dormir más de dos horas seguidas y sin tener que darle pecho en todos los despertares. Nos has ayudado a tener un orden de alimentación y sueño y ahora nuestro pequeño no está todo el día irritable. Decirte que siempre formarás parte de esta familia a la que has ayudado muchísimo. Pablo 13 meses	238	es	652
'Ez genuen uste bi ordu jarraian baino gehiago lo egin genezakeenik, esnatze guztietan bularra eman beharrik izan gabe. Elikadura eta lo ordena bat izaten lagundu diguzu, eta orain gure txikia ez da egun osoan haserre egoten. Esan nahi dizugu asko lagundu diozun familia honetako kide izango zarela beti. Pablo, 13 hilabete',	239	eu	652
Gracias por tu cercanía y hacernos sentir tan cómodos. Has hecho que el cambio a su habitación sea algo divertido, lo ha aceptado sin ningún problema. Con los cambios en los horarios, rutinas y hábitos de sueño que nos has dado le hemos ayudado a descansar mucho mejor. Gracias por todo. Irune, 2 años	240	es	653
'Eskerrik asko zure hurbiltasunagatik eta hain eroso sentiarazteagatik. Beraren logelarako aldaketa dibertigarri egin duzu, arazorik gabe onartu du. Eman dizkiguzun ordutegi, errutina eta lo ohituren aldaketekin askoz hobeto atseden hartzen lagundu diogu. Mila esker guztiagatik. Irune, 2 urte',	241	eu	653
Muchas gracias por tu tiempo, tu dedicación y tu profesionalidad. Me he sentido muy acompañada en este proceso, lo que nos ha ayudado a estar seguros de los pasos que íbamos dando. Siento que nos has dado las herramientas necesarias para poder progresar con el sueño de Ivet nosotros solos. De verdad, muchas gracias, nos has ayudado mucho. Ivet, 7 meses	242	es	654
'Eskerrik asko zure denbora, dedikazio eta profesionaltasunagatik. Oso lagundua sentitu naiz prozesu honetan, eta horrek lagundu digu ematen genituen pausoez ziur egoten. Sentitzen dut beharrezko tresnak eman dizkiguzula Iveten loarekin aurrera egin ahal izateko. Benetan, eskerrik asko, asko lagundu diguzu. Ivet, 7 hilabete',	243	eu	654
No pensábamos que podríamos llegar a dormir más de dos horas seguidas y sin tener que darle pecho en todos los despertares. Nos has ayudado a tener un orden de alimentación y sueño y ahora nuestro pequeño no está todo el día irritable. Decirte que siempre formarás parte de esta familia a la que has ayudado muchísimo. Pablo 13 meses	244	es	655
'Ez genuen uste bi ordu jarraian baino gehiago lo egin genezakeenik, esnatze guztietan bularra eman beharrik izan gabe. Elikadura eta lo ordena bat izaten lagundu diguzu, eta orain gure txikia ez da egun osoan haserre egoten. Esan nahi dizugu asko lagundu diozun familia honetako kide izango zarela beti. Pablo, 13 hilabete',	245	eu	655
Gracias por tu cercanía y hacernos sentir tan cómodos. Has hecho que el cambio a su habitación sea algo divertido, lo ha aceptado sin ningún problema. Con los cambios en los horarios, rutinas y hábitos de sueño que nos has dado le hemos ayudado a descansar mucho mejor. Gracias por todo. Irune, 2 años	246	es	656
'Eskerrik asko zure hurbiltasunagatik eta hain eroso sentiarazteagatik. Beraren logelarako aldaketa dibertigarri egin duzu, arazorik gabe onartu du. Eman dizkiguzun ordutegi, errutina eta lo ohituren aldaketekin askoz hobeto atseden hartzen lagundu diogu. Mila esker guztiagatik. Irune, 2 urte',	247	eu	656
\.


--
-- Data for Name: _pages_v_blocks_price_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_price_block (_order, _parent_id, _path, id, price, _uuid, block_name) FROM stdin;
4	191	version.layout	230	70	696b929e90bd23d88f628519	 Consultas(Precio))
7	191	version.layout	231	340	696b933590bd23d88f62851b	 Plan de sueño personalizado con seguimiento (Precio)
10	191	version.layout	232	295	696b936190bd23d88f62851d	 Plan de sueño conmigo, pero a tu ritmo (Precio)
13	191	version.layout	233	100	696b939e90bd23d88f62851f	 Plan a vuestro ritmo(Precio)
4	192	version.layout	234	70	696b929e90bd23d88f628519	 Consultas(Precio))
7	192	version.layout	235	340	696b933590bd23d88f62851b	 Plan de sueño personalizado con seguimiento (Precio)
10	192	version.layout	236	295	696b936190bd23d88f62851d	 Plan de sueño conmigo, pero a tu ritmo (Precio)
13	192	version.layout	237	100	696b939e90bd23d88f62851f	 Plan a vuestro ritmo(Precio)
4	200	version.layout	238	70	696b929e90bd23d88f628519	 Consultas(Precio))
7	200	version.layout	239	340	696b933590bd23d88f62851b	 Plan de sueño personalizado con seguimiento (Precio)
10	200	version.layout	240	295	696b936190bd23d88f62851d	 Plan de sueño conmigo, pero a tu ritmo (Precio)
13	200	version.layout	241	100	696b939e90bd23d88f62851f	 Plan a vuestro ritmo(Precio)
4	201	version.layout	242	70	696b929e90bd23d88f628519	 Consultas(Precio))
7	201	version.layout	243	340	696b933590bd23d88f62851b	 Plan de sueño personalizado con seguimiento (Precio)
10	201	version.layout	244	295	696b936190bd23d88f62851d	 Plan de sueño conmigo, pero a tu ritmo (Precio)
13	201	version.layout	245	100	696b939e90bd23d88f62851f	 Plan a vuestro ritmo(Precio)
4	202	version.layout	246	70	696b929e90bd23d88f628519	 Consultas(Precio))
7	202	version.layout	247	340	696b933590bd23d88f62851b	 Plan de sueño personalizado con seguimiento (Precio)
10	202	version.layout	248	295	696b936190bd23d88f62851d	 Plan de sueño conmigo, pero a tu ritmo (Precio)
13	202	version.layout	249	100	696b939e90bd23d88f62851f	 Plan a vuestro ritmo(Precio)
4	210	version.layout	250	70	696b929e90bd23d88f628519	 Consultas(Precio))
7	210	version.layout	251	340	696b933590bd23d88f62851b	 Plan de sueño personalizado con seguimiento (Precio)
10	210	version.layout	252	295	696b936190bd23d88f62851d	 Plan de sueño conmigo, pero a tu ritmo (Precio)
13	210	version.layout	253	100	696b939e90bd23d88f62851f	 Plan a vuestro ritmo(Precio)
4	211	version.layout	254	70	696b929e90bd23d88f628519	 Consultas(Precio))
7	211	version.layout	255	340	696b933590bd23d88f62851b	 Plan de sueño personalizado con seguimiento (Precio)
10	211	version.layout	256	295	696b936190bd23d88f62851d	 Plan de sueño conmigo, pero a tu ritmo (Precio)
13	211	version.layout	257	100	696b939e90bd23d88f62851f	 Plan a vuestro ritmo(Precio)
4	212	version.layout	258	70	696b929e90bd23d88f628519	 Consultas(Precio))
7	212	version.layout	259	340	696b933590bd23d88f62851b	 Plan de sueño personalizado con seguimiento (Precio)
10	212	version.layout	260	295	696b936190bd23d88f62851d	 Plan de sueño conmigo, pero a tu ritmo (Precio)
13	212	version.layout	261	100	696b939e90bd23d88f62851f	 Plan a vuestro ritmo(Precio)
4	215	version.layout	262	70	696b929e90bd23d88f628519	 Consultas(Precio))
7	215	version.layout	263	340	696b933590bd23d88f62851b	 Plan de sueño personalizado con seguimiento (Precio)
10	215	version.layout	264	295	696b936190bd23d88f62851d	 Plan de sueño conmigo, pero a tu ritmo (Precio)
13	215	version.layout	265	100	696b939e90bd23d88f62851f	 Plan a vuestro ritmo(Precio)
4	217	version.layout	266	70	696b929e90bd23d88f628519	 Consultas(Precio))
7	217	version.layout	267	340	696b933590bd23d88f62851b	 Plan de sueño personalizado con seguimiento (Precio)
10	217	version.layout	268	295	696b936190bd23d88f62851d	 Plan de sueño conmigo, pero a tu ritmo (Precio)
13	217	version.layout	269	100	696b939e90bd23d88f62851f	 Plan a vuestro ritmo(Precio)
\.


--
-- Data for Name: _pages_v_blocks_sentence; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_sentence (_order, _parent_id, _path, id, _uuid, block_name) FROM stdin;
3	214	version.layout	290	696b672f68f516778d0ed293	Lista Sentecias
8	216	version.layout	291	69695e7e4068806204c29c19	Lista de Sentencias
3	120	version.layout	270	696b672f68f516778d0ed293	Lista Sentecias
3	121	version.layout	271	696b672f68f516778d0ed293	Lista Sentecias
3	122	version.layout	272	696b672f68f516778d0ed293	Lista Sentecias
8	186	version.layout	275	69695e7e4068806204c29c19	Lista de Sentencias
8	187	version.layout	276	69695e7e4068806204c29c19	Lista de Sentencias
3	188	version.layout	278	696b672f68f516778d0ed293	Lista Sentecias
8	113	version.layout	226	69695e7e4068806204c29c19	Lista de Sentencias
3	189	version.layout	279	696b672f68f516778d0ed293	Lista Sentecias
3	190	version.layout	280	696b672f68f516778d0ed293	Lista Sentecias
8	195	version.layout	281	69695e7e4068806204c29c19	Lista de Sentencias
8	196	version.layout	282	69695e7e4068806204c29c19	Lista de Sentencias
3	197	version.layout	283	696b672f68f516778d0ed293	Lista Sentecias
3	198	version.layout	284	696b672f68f516778d0ed293	Lista Sentecias
3	199	version.layout	285	696b672f68f516778d0ed293	Lista Sentecias
8	206	version.layout	286	69695e7e4068806204c29c19	Lista de Sentencias
8	207	version.layout	287	69695e7e4068806204c29c19	Lista de Sentencias
8	208	version.layout	288	69695e7e4068806204c29c19	Lista de Sentencias
8	209	version.layout	289	69695e7e4068806204c29c19	Lista de Sentencias
\.


--
-- Data for Name: _pages_v_blocks_sentence_sentences; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_sentence_sentences (_order, _parent_id, id, _uuid) FROM stdin;
1	286	1124	69695f714068806204c29c1b
2	286	1125	69695f754068806204c29c1d
3	286	1126	69695f804068806204c29c1f
4	286	1127	69695fa04068806204c29c21
1	287	1128	69695f714068806204c29c1b
2	287	1129	69695f754068806204c29c1d
3	287	1130	69695f804068806204c29c1f
4	287	1131	69695fa04068806204c29c21
1	288	1132	69695f714068806204c29c1b
2	288	1133	69695f754068806204c29c1d
3	288	1134	69695f804068806204c29c1f
4	288	1135	69695fa04068806204c29c21
1	289	1136	69695f714068806204c29c1b
2	289	1137	69695f754068806204c29c1d
3	289	1138	69695f804068806204c29c1f
4	289	1139	69695fa04068806204c29c21
1	270	1060	696b673268f516778d0ed295
2	270	1061	696b675368f516778d0ed297
3	270	1062	696b675d68f516778d0ed299
4	270	1063	696b676568f516778d0ed29b
1	271	1064	696b673268f516778d0ed295
2	271	1065	696b675368f516778d0ed297
3	271	1066	696b675d68f516778d0ed299
4	271	1067	696b676568f516778d0ed29b
1	272	1068	696b673268f516778d0ed295
2	272	1069	696b675368f516778d0ed297
3	272	1070	696b675d68f516778d0ed299
4	272	1071	696b676568f516778d0ed29b
1	290	1140	696b673268f516778d0ed295
2	290	1141	696b675368f516778d0ed297
3	290	1142	696b675d68f516778d0ed299
4	290	1143	696b676568f516778d0ed29b
1	291	1144	69695f714068806204c29c1b
2	291	1145	69695f754068806204c29c1d
3	291	1146	69695f804068806204c29c1f
4	291	1147	69695fa04068806204c29c21
1	275	1080	69695f714068806204c29c1b
2	275	1081	69695f754068806204c29c1d
3	275	1082	69695f804068806204c29c1f
4	275	1083	69695fa04068806204c29c21
1	276	1084	69695f714068806204c29c1b
2	276	1085	69695f754068806204c29c1d
3	276	1086	69695f804068806204c29c1f
4	276	1087	69695fa04068806204c29c21
1	278	1092	696b673268f516778d0ed295
2	278	1093	696b675368f516778d0ed297
3	278	1094	696b675d68f516778d0ed299
4	278	1095	696b676568f516778d0ed29b
1	279	1096	696b673268f516778d0ed295
2	279	1097	696b675368f516778d0ed297
3	279	1098	696b675d68f516778d0ed299
4	279	1099	696b676568f516778d0ed29b
1	280	1100	696b673268f516778d0ed295
2	280	1101	696b675368f516778d0ed297
3	280	1102	696b675d68f516778d0ed299
4	280	1103	696b676568f516778d0ed29b
1	226	884	69695f714068806204c29c1b
2	226	885	69695f754068806204c29c1d
3	226	886	69695f804068806204c29c1f
4	226	887	69695fa04068806204c29c21
1	281	1104	69695f714068806204c29c1b
2	281	1105	69695f754068806204c29c1d
3	281	1106	69695f804068806204c29c1f
4	281	1107	69695fa04068806204c29c21
1	282	1108	69695f714068806204c29c1b
2	282	1109	69695f754068806204c29c1d
3	282	1110	69695f804068806204c29c1f
4	282	1111	69695fa04068806204c29c21
1	283	1112	696b673268f516778d0ed295
2	283	1113	696b675368f516778d0ed297
3	283	1114	696b675d68f516778d0ed299
4	283	1115	696b676568f516778d0ed29b
1	284	1116	696b673268f516778d0ed295
2	284	1117	696b675368f516778d0ed297
3	284	1118	696b675d68f516778d0ed299
4	284	1119	696b676568f516778d0ed29b
1	285	1120	696b673268f516778d0ed295
2	285	1121	696b675368f516778d0ed297
3	285	1122	696b675d68f516778d0ed299
4	285	1123	696b676568f516778d0ed29b
\.


--
-- Data for Name: _pages_v_blocks_sentence_sentences_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_sentence_sentences_locales (title, id, _locale, _parent_id) FROM stdin;
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	662	es	1140
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	663	eu	1140
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	664	es	1141
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	665	eu	1141
3* Te expondré el plan en una videollamada	666	es	1142
3* Plana, bideodeian azalduko dizut	667	eu	1142
4* Es el momento de comenzar	668	es	1143
4* Hasteko momentua iritsi da!	669	eu	1143
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	292	es	884
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	293	eu	884
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	294	es	885
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	295	eu	885
3* Te expondré el plan en una videollamada	296	es	886
3* Plana, bideodeian azalduko dizut	297	eu	886
4* Es el momento de comenzar	298	es	887
4* Hasteko momentua iritsi da!	299	eu	887
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	542	es	1080
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	543	eu	1080
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	544	es	1081
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	545	eu	1081
3* Te expondré el plan en una videollamada	546	es	1082
3* Plana, bideodeian azalduko dizut	547	eu	1082
4* Es el momento de comenzar	548	es	1083
4* Hasteko momentua iritsi da!	549	eu	1083
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	670	es	1144
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	671	eu	1144
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	672	es	1145
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	673	eu	1145
3* Te expondré el plan en una videollamada	674	es	1146
3* Plana, bideodeian azalduko dizut	675	eu	1146
4* Es el momento de comenzar	676	es	1147
4* Hasteko momentua iritsi da!	677	eu	1147
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	550	es	1084
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	551	eu	1084
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	552	es	1085
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	553	eu	1085
3* Te expondré el plan en una videollamada	554	es	1086
3* Plana, bideodeian azalduko dizut	555	eu	1086
4* Es el momento de comenzar	556	es	1087
4* Hasteko momentua iritsi da!	557	eu	1087
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	582	es	1100
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	583	eu	1100
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	584	es	1101
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	585	eu	1101
3* Te expondré el plan en una videollamada	586	es	1102
3* Plana, bideodeian azalduko dizut	587	eu	1102
4* Es el momento de comenzar	588	es	1103
4* Hasteko momentua iritsi da!	589	eu	1103
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	606	es	1112
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	607	eu	1112
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	608	es	1113
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	502	es	1060
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	503	eu	1060
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	504	es	1061
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	505	eu	1061
3* Te expondré el plan en una videollamada	506	es	1062
3* Plana, bideodeian azalduko dizut	507	eu	1062
4* Es el momento de comenzar	508	es	1063
4* Hasteko momentua iritsi da!	509	eu	1063
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	510	es	1064
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	511	eu	1064
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	512	es	1065
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	513	eu	1065
3* Te expondré el plan en una videollamada	514	es	1066
3* Plana, bideodeian azalduko dizut	515	eu	1066
4* Es el momento de comenzar	516	es	1067
4* Hasteko momentua iritsi da!	517	eu	1067
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	518	es	1068
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	519	eu	1068
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	520	es	1069
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	521	eu	1069
3* Te expondré el plan en una videollamada	522	es	1070
3* Plana, bideodeian azalduko dizut	523	eu	1070
4* Es el momento de comenzar	524	es	1071
4* Hasteko momentua iritsi da!	525	eu	1071
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	566	es	1092
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	567	eu	1092
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	568	es	1093
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	569	eu	1093
3* Te expondré el plan en una videollamada	570	es	1094
3* Plana, bideodeian azalduko dizut	571	eu	1094
4* Es el momento de comenzar	572	es	1095
4* Hasteko momentua iritsi da!	573	eu	1095
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	574	es	1096
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	575	eu	1096
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	576	es	1097
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	577	eu	1097
3* Te expondré el plan en una videollamada	578	es	1098
3* Plana, bideodeian azalduko dizut	579	eu	1098
4* Es el momento de comenzar	580	es	1099
4* Hasteko momentua iritsi da!	581	eu	1099
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	590	es	1104
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	591	eu	1104
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	592	es	1105
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	593	eu	1105
3* Te expondré el plan en una videollamada	594	es	1106
3* Plana, bideodeian azalduko dizut	595	eu	1106
4* Es el momento de comenzar	596	es	1107
4* Hasteko momentua iritsi da!	597	eu	1107
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	598	es	1108
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	599	eu	1108
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	600	es	1109
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	601	eu	1109
3* Te expondré el plan en una videollamada	602	es	1110
3* Plana, bideodeian azalduko dizut	603	eu	1110
4* Es el momento de comenzar	604	es	1111
4* Hasteko momentua iritsi da!	605	eu	1111
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	609	eu	1113
3* Te expondré el plan en una videollamada	610	es	1114
3* Plana, bideodeian azalduko dizut	611	eu	1114
4* Es el momento de comenzar	612	es	1115
4* Hasteko momentua iritsi da!	613	eu	1115
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	614	es	1116
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	615	eu	1116
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	616	es	1117
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	617	eu	1117
3* Te expondré el plan en una videollamada	618	es	1118
3* Plana, bideodeian azalduko dizut	619	eu	1118
4* Es el momento de comenzar	620	es	1119
4* Hasteko momentua iritsi da!	621	eu	1119
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	622	es	1120
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	623	eu	1120
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	624	es	1121
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	625	eu	1121
3* Te expondré el plan en una videollamada	626	es	1122
3* Plana, bideodeian azalduko dizut	627	eu	1122
4* Es el momento de comenzar	628	es	1123
4* Hasteko momentua iritsi da!	629	eu	1123
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	630	es	1124
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	631	eu	1124
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	632	es	1125
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	633	eu	1125
3* Te expondré el plan en una videollamada	634	es	1126
3* Plana, bideodeian azalduko dizut	635	eu	1126
4* Es el momento de comenzar	636	es	1127
4* Hasteko momentua iritsi da!	637	eu	1127
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	638	es	1128
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	639	eu	1128
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	640	es	1129
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	641	eu	1129
3* Te expondré el plan en una videollamada	642	es	1130
3* Plana, bideodeian azalduko dizut	643	eu	1130
4* Es el momento de comenzar	644	es	1131
4* Hasteko momentua iritsi da!	645	eu	1131
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	646	es	1132
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	647	eu	1132
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	648	es	1133
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	649	eu	1133
3* Te expondré el plan en una videollamada	650	es	1134
3* Plana, bideodeian azalduko dizut	651	eu	1134
4* Es el momento de comenzar	652	es	1135
4* Hasteko momentua iritsi da!	653	eu	1135
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	654	es	1136
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	655	eu	1136
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	656	es	1137
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	657	eu	1137
3* Te expondré el plan en una videollamada	658	es	1138
3* Plana, bideodeian azalduko dizut	659	eu	1138
4* Es el momento de comenzar	660	es	1139
4* Hasteko momentua iritsi da!	661	eu	1139
\.


--
-- Data for Name: _pages_v_blocks_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_services (_order, _parent_id, _path, id, _uuid, block_name) FROM stdin;
4	206	version.layout	478	696958d8692dd42525b58222	Lista de Servicios
4	207	version.layout	479	696958d8692dd42525b58222	Lista de Servicios
4	208	version.layout	480	696958d8692dd42525b58222	Lista de Servicios
4	209	version.layout	481	696958d8692dd42525b58222	Lista de Servicios
2	210	version.layout	482	696b82866af15f6661f81efc	Liste de Servicios
2	211	version.layout	483	696b82866af15f6661f81efc	Liste de Servicios
2	212	version.layout	484	696b82866af15f6661f81efc	Liste de Servicios
4	214	version.layout	485	696b678368f516778d0ed29d	Lista de Servcios
2	215	version.layout	486	696b82866af15f6661f81efc	Liste de Servicios
4	216	version.layout	487	696958d8692dd42525b58222	Lista de Servicios
2	217	version.layout	488	696b82866af15f6661f81efc	Liste de Servicios
4	120	version.layout	318	696b678368f516778d0ed29d	Lista de Servcios
4	121	version.layout	319	696b678368f516778d0ed29d	Lista de Servcios
4	122	version.layout	320	696b678368f516778d0ed29d	Lista de Servcios
4	113	version.layout	274	696958d8692dd42525b58222	Lista de Servicios
4	186	version.layout	462	696958d8692dd42525b58222	Lista de Servicios
4	187	version.layout	463	696958d8692dd42525b58222	Lista de Servicios
4	188	version.layout	465	696b678368f516778d0ed29d	Lista de Servcios
4	189	version.layout	466	696b678368f516778d0ed29d	Lista de Servcios
4	190	version.layout	467	696b678368f516778d0ed29d	Lista de Servcios
2	191	version.layout	468	696b82866af15f6661f81efc	Liste de Servicios
2	192	version.layout	469	696b82866af15f6661f81efc	Liste de Servicios
4	195	version.layout	470	696958d8692dd42525b58222	Lista de Servicios
4	196	version.layout	471	696958d8692dd42525b58222	Lista de Servicios
4	197	version.layout	472	696b678368f516778d0ed29d	Lista de Servcios
4	198	version.layout	473	696b678368f516778d0ed29d	Lista de Servcios
4	199	version.layout	474	696b678368f516778d0ed29d	Lista de Servcios
2	200	version.layout	475	696b82866af15f6661f81efc	Liste de Servicios
2	201	version.layout	476	696b82866af15f6661f81efc	Liste de Servicios
2	202	version.layout	477	696b82866af15f6661f81efc	Liste de Servicios
\.


--
-- Data for Name: _pages_v_blocks_services_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_services_services (_order, _parent_id, id, image_id, _uuid) FROM stdin;
1	482	2534	17	696b82dd6af15f6661f81efe
2	482	2535	19	696b82f86af15f6661f81f00
3	482	2536	20	696b830c6af15f6661f81f02
4	482	2537	21	696b83246af15f6661f81f04
5	482	2538	22	696b83306af15f6661f81f06
1	485	2549	17	696b678f68f516778d0ed29f
2	485	2550	19	696b680268f516778d0ed2a1
3	485	2551	20	696b682868f516778d0ed2a3
4	485	2552	21	696b75d36af15f6661f81ef2
5	485	2553	22	696b77a06af15f6661f81ef4
1	487	2559	17	696958db692dd42525b58224
2	487	2560	19	69695959692dd42525b58226
3	487	2561	20	696959b0692dd42525b58228
4	487	2562	21	696959d4692dd42525b5822a
5	487	2563	22	696959f6692dd42525b5822c
1	465	2443	17	696b678f68f516778d0ed29f
2	465	2444	19	696b680268f516778d0ed2a1
3	465	2445	20	696b682868f516778d0ed2a3
4	465	2446	21	696b75d36af15f6661f81ef2
5	465	2447	22	696b77a06af15f6661f81ef4
1	466	2448	17	696b678f68f516778d0ed29f
6	487	2564	23	69695a27692dd42525b5822e
2	466	2449	19	696b680268f516778d0ed2a1
3	466	2450	20	696b682868f516778d0ed2a3
4	466	2451	21	696b75d36af15f6661f81ef2
5	466	2452	22	696b77a06af15f6661f81ef4
1	468	2458	17	696b82dd6af15f6661f81efe
2	468	2459	19	696b82f86af15f6661f81f00
3	468	2460	20	696b830c6af15f6661f81f02
4	468	2461	21	696b83246af15f6661f81f04
5	468	2462	22	696b83306af15f6661f81f06
1	469	2463	17	696b82dd6af15f6661f81efe
2	469	2464	19	696b82f86af15f6661f81f00
3	469	2465	20	696b830c6af15f6661f81f02
4	469	2466	21	696b83246af15f6661f81f04
5	469	2467	22	696b83306af15f6661f81f06
1	472	2480	17	696b678f68f516778d0ed29f
2	472	2481	19	696b680268f516778d0ed2a1
3	472	2482	20	696b682868f516778d0ed2a3
4	472	2483	21	696b75d36af15f6661f81ef2
5	472	2484	22	696b77a06af15f6661f81ef4
1	473	2485	17	696b678f68f516778d0ed29f
1	274	1528	17	696958db692dd42525b58224
2	274	1529	19	69695959692dd42525b58226
3	274	1530	20	696959b0692dd42525b58228
4	274	1531	21	696959d4692dd42525b5822a
5	274	1532	22	696959f6692dd42525b5822c
6	274	1533	23	69695a27692dd42525b5822e
2	473	2486	19	696b680268f516778d0ed2a1
3	473	2487	20	696b682868f516778d0ed2a3
4	473	2488	21	696b75d36af15f6661f81ef2
5	473	2489	22	696b77a06af15f6661f81ef4
1	474	2490	17	696b678f68f516778d0ed29f
2	474	2491	19	696b680268f516778d0ed2a1
3	474	2492	20	696b682868f516778d0ed2a3
4	474	2493	21	696b75d36af15f6661f81ef2
5	474	2494	22	696b77a06af15f6661f81ef4
1	479	2516	17	696958db692dd42525b58224
2	479	2517	19	69695959692dd42525b58226
3	479	2518	20	696959b0692dd42525b58228
4	479	2519	21	696959d4692dd42525b5822a
5	479	2520	22	696959f6692dd42525b5822c
6	479	2521	23	69695a27692dd42525b5822e
1	480	2522	17	696958db692dd42525b58224
2	480	2523	19	69695959692dd42525b58226
3	480	2524	20	696959b0692dd42525b58228
4	480	2525	21	696959d4692dd42525b5822a
5	480	2526	22	696959f6692dd42525b5822c
6	480	2527	23	69695a27692dd42525b5822e
1	481	2528	17	696958db692dd42525b58224
2	481	2529	19	69695959692dd42525b58226
3	481	2530	20	696959b0692dd42525b58228
4	481	2531	21	696959d4692dd42525b5822a
5	481	2532	22	696959f6692dd42525b5822c
6	481	2533	23	69695a27692dd42525b5822e
1	483	2539	17	696b82dd6af15f6661f81efe
2	483	2540	19	696b82f86af15f6661f81f00
3	483	2541	20	696b830c6af15f6661f81f02
4	483	2542	21	696b83246af15f6661f81f04
5	483	2543	22	696b83306af15f6661f81f06
1	467	2453	17	696b678f68f516778d0ed29f
2	467	2454	19	696b680268f516778d0ed2a1
3	467	2455	20	696b682868f516778d0ed2a3
4	467	2456	21	696b75d36af15f6661f81ef2
5	467	2457	22	696b77a06af15f6661f81ef4
1	484	2544	17	696b82dd6af15f6661f81efe
2	484	2545	19	696b82f86af15f6661f81f00
3	484	2546	20	696b830c6af15f6661f81f02
4	484	2547	21	696b83246af15f6661f81f04
5	484	2548	22	696b83306af15f6661f81f06
1	486	2554	17	696b82dd6af15f6661f81efe
2	486	2555	19	696b82f86af15f6661f81f00
3	486	2556	20	696b830c6af15f6661f81f02
4	486	2557	21	696b83246af15f6661f81f04
5	486	2558	22	696b83306af15f6661f81f06
1	470	2468	17	696958db692dd42525b58224
2	470	2469	19	69695959692dd42525b58226
3	470	2470	20	696959b0692dd42525b58228
4	470	2471	21	696959d4692dd42525b5822a
5	470	2472	22	696959f6692dd42525b5822c
6	470	2473	23	69695a27692dd42525b5822e
1	471	2474	17	696958db692dd42525b58224
2	471	2475	19	69695959692dd42525b58226
3	471	2476	20	696959b0692dd42525b58228
4	471	2477	21	696959d4692dd42525b5822a
5	471	2478	22	696959f6692dd42525b5822c
6	471	2479	23	69695a27692dd42525b5822e
1	475	2495	17	696b82dd6af15f6661f81efe
2	475	2496	19	696b82f86af15f6661f81f00
3	475	2497	20	696b830c6af15f6661f81f02
4	475	2498	21	696b83246af15f6661f81f04
5	475	2499	22	696b83306af15f6661f81f06
1	476	2500	17	696b82dd6af15f6661f81efe
2	476	2501	19	696b82f86af15f6661f81f00
3	476	2502	20	696b830c6af15f6661f81f02
4	476	2503	21	696b83246af15f6661f81f04
5	476	2504	22	696b83306af15f6661f81f06
1	477	2505	17	696b82dd6af15f6661f81efe
1	318	1747	17	696b678f68f516778d0ed29f
2	318	1748	19	696b680268f516778d0ed2a1
3	318	1749	20	696b682868f516778d0ed2a3
4	318	1750	21	696b75d36af15f6661f81ef2
5	318	1751	22	696b77a06af15f6661f81ef4
1	319	1752	17	696b678f68f516778d0ed29f
2	319	1753	19	696b680268f516778d0ed2a1
3	319	1754	20	696b682868f516778d0ed2a3
4	319	1755	21	696b75d36af15f6661f81ef2
5	319	1756	22	696b77a06af15f6661f81ef4
1	320	1757	17	696b678f68f516778d0ed29f
2	320	1758	19	696b680268f516778d0ed2a1
3	320	1759	20	696b682868f516778d0ed2a3
4	320	1760	21	696b75d36af15f6661f81ef2
5	320	1761	22	696b77a06af15f6661f81ef4
2	477	2506	19	696b82f86af15f6661f81f00
3	477	2507	20	696b830c6af15f6661f81f02
4	477	2508	21	696b83246af15f6661f81f04
5	477	2509	22	696b83306af15f6661f81f06
1	478	2510	17	696958db692dd42525b58224
2	478	2511	19	69695959692dd42525b58226
3	478	2512	20	696959b0692dd42525b58228
4	478	2513	21	696959d4692dd42525b5822a
5	478	2514	22	696959f6692dd42525b5822c
6	478	2515	23	69695a27692dd42525b5822e
1	488	2565	17	696b82dd6af15f6661f81efe
2	488	2566	19	696b82f86af15f6661f81f00
3	488	2567	20	696b830c6af15f6661f81f02
4	488	2568	21	696b83246af15f6661f81f04
5	488	2569	22	696b83306af15f6661f81f06
1	462	2426	17	696958db692dd42525b58224
2	462	2427	19	69695959692dd42525b58226
3	462	2428	20	696959b0692dd42525b58228
4	462	2429	21	696959d4692dd42525b5822a
5	462	2430	22	696959f6692dd42525b5822c
6	462	2431	23	69695a27692dd42525b5822e
1	463	2432	17	696958db692dd42525b58224
2	463	2433	19	69695959692dd42525b58226
3	463	2434	20	696959b0692dd42525b58228
4	463	2435	21	696959d4692dd42525b5822a
5	463	2436	22	696959f6692dd42525b5822c
6	463	2437	23	69695a27692dd42525b5822e
\.


--
-- Data for Name: _pages_v_blocks_services_services_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_blocks_services_services_locales (title, id, _locale, _parent_id) FROM stdin;
Consulta de 1hora	1874	es	2453
1 orduko kontsulta	1875	eu	2453
Plan de sueño con mi seguimiento	1876	es	2454
Lo egiteko plana nire jarraipenarekin	1877	eu	2454
Plan de sueño conmigo pero a tu ritmo	1878	es	2455
Amets plana nirekin baina zure erritmoan	1879	eu	2455
Plan de sueño a tu ritmo	1880	es	2456
Lo egiteko plana zure erritmoan	1881	eu	2456
Encuentros grupales	1882	es	2457
Talde bilerak	1883	eu	2457
Consulta de 1hora	1904	es	2468
1 orduko kontsulta	1905	eu	2468
Plan de sueño con mi seguimiento	1906	es	2469
Lo egiteko plana nire jarraipenarekin	1907	eu	2469
Plan de sueño conmigo pero a tu ritmo	1908	es	2470
Consulta de 1hora	2036	es	2534
1 orduko kontsulta	2037	eu	2534
Plan de sueño con mi seguimiento	2038	es	2535
Lo egiteko plana nire jarraipenarekin	2039	eu	2535
Plan de sueño conmigo pero a tu ritmo	2040	es	2536
Amets plana nirekin baina zure erritmoan	2041	eu	2536
Amets plana nirekin baina zure erritmoan	1909	eu	2470
Plan de sueño a tu ritmo	1910	es	2471
Plan de sueño a tu ritmo	2042	es	2537
Lo egiteko plana zure erritmoan	2043	eu	2537
Encuentros grupales	2044	es	2538
Talde bilerak	2045	eu	2538
Consulta de 1hora	2086	es	2559
1 orduko kontsulta	2087	eu	2559
Plan de sueño con mi seguimiento	2088	es	2560
Lo egiteko plana nire jarraipenarekin	2089	eu	2560
Plan de sueño conmigo pero a tu ritmo	2090	es	2561
Amets plana nirekin baina zure erritmoan	2091	eu	2561
Plan de sueño a tu ritmo	2092	es	2562
Lo egiteko plana zure erritmoan	2093	eu	2562
Encuentros grupales	2094	es	2563
Talde bilerak	2095	eu	2563
¿Hablamos?'	2096	es	2564
Hitz egiten dugu?	2097	eu	2564
Consulta de 1hora	429	es	1528
1 orduko kontsulta	430	eu	1528
Plan de sueño con mi seguimiento	431	es	1529
Lo egiteko plana nire jarraipenarekin	432	eu	1529
Plan de sueño conmigo pero a tu ritmo	433	es	1530
Amets plana nirekin baina zure erritmoan	434	eu	1530
Plan de sueño a tu ritmo	435	es	1531
Lo egiteko plana zure erritmoan	436	eu	1531
Encuentros grupales	437	es	1532
Talde bilerak	438	eu	1532
Lo egiteko plana zure erritmoan	1911	eu	2471
Encuentros grupales	1912	es	2472
¿Hablamos?'	439	es	1533
Hitz egiten dugu?	440	eu	1533
Talde bilerak	1913	eu	2472
Consulta de 1hora	2046	es	2539
1 orduko kontsulta	2047	eu	2539
Plan de sueño con mi seguimiento	2048	es	2540
Lo egiteko plana nire jarraipenarekin	2049	eu	2540
Plan de sueño conmigo pero a tu ritmo	2050	es	2541
Amets plana nirekin baina zure erritmoan	2051	eu	2541
Plan de sueño a tu ritmo	2052	es	2542
Lo egiteko plana zure erritmoan	2053	eu	2542
Encuentros grupales	2054	es	2543
Talde bilerak	2055	eu	2543
Consulta de 1hora	2056	es	2544
1 orduko kontsulta	2057	eu	2544
Plan de sueño con mi seguimiento	2058	es	2545
Lo egiteko plana nire jarraipenarekin	2059	eu	2545
Plan de sueño conmigo pero a tu ritmo	2060	es	2546
Amets plana nirekin baina zure erritmoan	2061	eu	2546
Plan de sueño a tu ritmo	2062	es	2547
Lo egiteko plana zure erritmoan	2063	eu	2547
Encuentros grupales	2064	es	2548
Talde bilerak	2065	eu	2548
Consulta de 1hora	2098	es	2565
1 orduko kontsulta	2099	eu	2565
Plan de sueño con mi seguimiento	2100	es	2566
Lo egiteko plana nire jarraipenarekin	2101	eu	2566
Plan de sueño conmigo pero a tu ritmo	2102	es	2567
Amets plana nirekin baina zure erritmoan	2103	eu	2567
Plan de sueño a tu ritmo	2104	es	2568
Lo egiteko plana zure erritmoan	2105	eu	2568
Encuentros grupales	2106	es	2569
Talde bilerak	2107	eu	2569
Consulta de 1hora	668	es	1747
1 orduko kontsulta	669	eu	1747
Plan de sueño con mi seguimiento	670	es	1748
Lo egiteko plana nire jarraipenarekin	671	eu	1748
Plan de sueño conmigo pero a tu ritmo	672	es	1749
Amets plana nirekin baina zure erritmoan	673	eu	1749
Plan de sueño a tu ritmo	674	es	1750
Lo egiteko plana zure erritmoan	675	eu	1750
Encuentros grupales	676	es	1751
Talde bilerak	677	eu	1751
Consulta de 1hora	678	es	1752
1 orduko kontsulta	679	eu	1752
Plan de sueño con mi seguimiento	680	es	1753
Lo egiteko plana nire jarraipenarekin	681	eu	1753
Plan de sueño conmigo pero a tu ritmo	682	es	1754
Amets plana nirekin baina zure erritmoan	683	eu	1754
Plan de sueño a tu ritmo	684	es	1755
Lo egiteko plana zure erritmoan	685	eu	1755
Encuentros grupales	686	es	1756
Talde bilerak	687	eu	1756
Consulta de 1hora	688	es	1757
1 orduko kontsulta	689	eu	1757
Plan de sueño con mi seguimiento	690	es	1758
Lo egiteko plana nire jarraipenarekin	691	eu	1758
Plan de sueño conmigo pero a tu ritmo	692	es	1759
Amets plana nirekin baina zure erritmoan	693	eu	1759
Plan de sueño a tu ritmo	694	es	1760
Lo egiteko plana zure erritmoan	695	eu	1760
Encuentros grupales	696	es	1761
Talde bilerak	697	eu	1761
Consulta de 1hora	1820	es	2426
1 orduko kontsulta	1821	eu	2426
Plan de sueño con mi seguimiento	1822	es	2427
Lo egiteko plana nire jarraipenarekin	1823	eu	2427
Plan de sueño conmigo pero a tu ritmo	1824	es	2428
Amets plana nirekin baina zure erritmoan	1825	eu	2428
Plan de sueño a tu ritmo	1826	es	2429
Lo egiteko plana zure erritmoan	1827	eu	2429
Encuentros grupales	1828	es	2430
Talde bilerak	1829	eu	2430
¿Hablamos?'	1830	es	2431
Hitz egiten dugu?	1831	eu	2431
Consulta de 1hora	1884	es	2458
1 orduko kontsulta	1885	eu	2458
Plan de sueño con mi seguimiento	1886	es	2459
Lo egiteko plana nire jarraipenarekin	1887	eu	2459
Plan de sueño conmigo pero a tu ritmo	1888	es	2460
Amets plana nirekin baina zure erritmoan	1889	eu	2460
Plan de sueño a tu ritmo	1890	es	2461
Lo egiteko plana zure erritmoan	1891	eu	2461
Encuentros grupales	1892	es	2462
Talde bilerak	1893	eu	2462
Consulta de 1hora	1894	es	2463
1 orduko kontsulta	1895	eu	2463
Plan de sueño con mi seguimiento	1896	es	2464
Lo egiteko plana nire jarraipenarekin	1897	eu	2464
Plan de sueño conmigo pero a tu ritmo	1898	es	2465
Amets plana nirekin baina zure erritmoan	1899	eu	2465
Plan de sueño a tu ritmo	1900	es	2466
Lo egiteko plana zure erritmoan	1901	eu	2466
Encuentros grupales	1902	es	2467
Talde bilerak	1903	eu	2467
¿Hablamos?'	1914	es	2473
Hitz egiten dugu?	1915	eu	2473
Consulta de 1hora	1916	es	2474
1 orduko kontsulta	1917	eu	2474
Plan de sueño con mi seguimiento	1918	es	2475
Lo egiteko plana nire jarraipenarekin	1919	eu	2475
Plan de sueño conmigo pero a tu ritmo	1920	es	2476
Amets plana nirekin baina zure erritmoan	1921	eu	2476
Plan de sueño a tu ritmo	1922	es	2477
Lo egiteko plana zure erritmoan	1923	eu	2477
Encuentros grupales	1924	es	2478
Talde bilerak	1925	eu	2478
¿Hablamos?'	1926	es	2479
Hitz egiten dugu?	1927	eu	2479
Consulta de 1hora	1928	es	2480
1 orduko kontsulta	1929	eu	2480
Plan de sueño con mi seguimiento	1930	es	2481
Lo egiteko plana nire jarraipenarekin	1931	eu	2481
Plan de sueño conmigo pero a tu ritmo	1932	es	2482
Amets plana nirekin baina zure erritmoan	1933	eu	2482
Plan de sueño a tu ritmo	1934	es	2483
Consulta de 1hora	2066	es	2549
1 orduko kontsulta	2067	eu	2549
Plan de sueño con mi seguimiento	2068	es	2550
Lo egiteko plana nire jarraipenarekin	2069	eu	2550
Consulta de 1hora	1832	es	2432
1 orduko kontsulta	1833	eu	2432
Plan de sueño con mi seguimiento	1834	es	2433
Lo egiteko plana nire jarraipenarekin	1835	eu	2433
Plan de sueño conmigo pero a tu ritmo	1836	es	2434
Plan de sueño conmigo pero a tu ritmo	2070	es	2551
Amets plana nirekin baina zure erritmoan	2071	eu	2551
Plan de sueño a tu ritmo	2072	es	2552
Lo egiteko plana zure erritmoan	2073	eu	2552
Encuentros grupales	2074	es	2553
Talde bilerak	2075	eu	2553
Amets plana nirekin baina zure erritmoan	1837	eu	2434
Plan de sueño a tu ritmo	1838	es	2435
Lo egiteko plana zure erritmoan	1839	eu	2435
Encuentros grupales	1840	es	2436
Talde bilerak	1841	eu	2436
¿Hablamos?'	1842	es	2437
Hitz egiten dugu?	1843	eu	2437
Consulta de 1hora	1854	es	2443
1 orduko kontsulta	1855	eu	2443
Plan de sueño con mi seguimiento	1856	es	2444
Lo egiteko plana nire jarraipenarekin	1857	eu	2444
Plan de sueño conmigo pero a tu ritmo	1858	es	2445
Amets plana nirekin baina zure erritmoan	1859	eu	2445
Plan de sueño a tu ritmo	1860	es	2446
Lo egiteko plana zure erritmoan	1861	eu	2446
Encuentros grupales	1862	es	2447
Talde bilerak	1863	eu	2447
Consulta de 1hora	1864	es	2448
1 orduko kontsulta	1865	eu	2448
Plan de sueño con mi seguimiento	1866	es	2449
Lo egiteko plana nire jarraipenarekin	1867	eu	2449
Plan de sueño conmigo pero a tu ritmo	1868	es	2450
Amets plana nirekin baina zure erritmoan	1869	eu	2450
Plan de sueño a tu ritmo	1870	es	2451
Lo egiteko plana zure erritmoan	1871	eu	2451
Encuentros grupales	1872	es	2452
Talde bilerak	1873	eu	2452
Lo egiteko plana zure erritmoan	1935	eu	2483
Encuentros grupales	1936	es	2484
Talde bilerak	1937	eu	2484
Consulta de 1hora	1938	es	2485
1 orduko kontsulta	1939	eu	2485
Plan de sueño con mi seguimiento	1940	es	2486
Lo egiteko plana nire jarraipenarekin	1941	eu	2486
Plan de sueño conmigo pero a tu ritmo	1942	es	2487
Amets plana nirekin baina zure erritmoan	1943	eu	2487
Plan de sueño a tu ritmo	1944	es	2488
Lo egiteko plana zure erritmoan	1945	eu	2488
Encuentros grupales	1946	es	2489
Talde bilerak	1947	eu	2489
Consulta de 1hora	1948	es	2490
1 orduko kontsulta	1949	eu	2490
Plan de sueño con mi seguimiento	1950	es	2491
Lo egiteko plana nire jarraipenarekin	1951	eu	2491
Plan de sueño conmigo pero a tu ritmo	1952	es	2492
Amets plana nirekin baina zure erritmoan	1953	eu	2492
Plan de sueño a tu ritmo	1954	es	2493
Lo egiteko plana zure erritmoan	1955	eu	2493
Encuentros grupales	1956	es	2494
Talde bilerak	1957	eu	2494
Consulta de 1hora	1958	es	2495
1 orduko kontsulta	1959	eu	2495
Plan de sueño con mi seguimiento	1960	es	2496
Lo egiteko plana nire jarraipenarekin	1961	eu	2496
Plan de sueño conmigo pero a tu ritmo	1962	es	2497
Amets plana nirekin baina zure erritmoan	1963	eu	2497
Plan de sueño a tu ritmo	1964	es	2498
Lo egiteko plana zure erritmoan	1965	eu	2498
Encuentros grupales	1966	es	2499
Talde bilerak	1967	eu	2499
Consulta de 1hora	1968	es	2500
1 orduko kontsulta	1969	eu	2500
Plan de sueño con mi seguimiento	1970	es	2501
Lo egiteko plana nire jarraipenarekin	1971	eu	2501
Plan de sueño conmigo pero a tu ritmo	1972	es	2502
Amets plana nirekin baina zure erritmoan	1973	eu	2502
Plan de sueño a tu ritmo	1974	es	2503
Lo egiteko plana zure erritmoan	1975	eu	2503
Encuentros grupales	1976	es	2504
Talde bilerak	1977	eu	2504
Consulta de 1hora	1978	es	2505
1 orduko kontsulta	1979	eu	2505
Plan de sueño con mi seguimiento	1980	es	2506
Lo egiteko plana nire jarraipenarekin	1981	eu	2506
Plan de sueño conmigo pero a tu ritmo	1982	es	2507
Amets plana nirekin baina zure erritmoan	1983	eu	2507
Plan de sueño a tu ritmo	1984	es	2508
Lo egiteko plana zure erritmoan	1985	eu	2508
Encuentros grupales	1986	es	2509
Talde bilerak	1987	eu	2509
Consulta de 1hora	1988	es	2510
1 orduko kontsulta	1989	eu	2510
Plan de sueño con mi seguimiento	1990	es	2511
Lo egiteko plana nire jarraipenarekin	1991	eu	2511
Plan de sueño conmigo pero a tu ritmo	1992	es	2512
Amets plana nirekin baina zure erritmoan	1993	eu	2512
Plan de sueño a tu ritmo	1994	es	2513
Lo egiteko plana zure erritmoan	1995	eu	2513
Encuentros grupales	1996	es	2514
Talde bilerak	1997	eu	2514
¿Hablamos?'	1998	es	2515
Hitz egiten dugu?	1999	eu	2515
Consulta de 1hora	2000	es	2516
1 orduko kontsulta	2001	eu	2516
Plan de sueño con mi seguimiento	2002	es	2517
Lo egiteko plana nire jarraipenarekin	2003	eu	2517
Plan de sueño conmigo pero a tu ritmo	2004	es	2518
Amets plana nirekin baina zure erritmoan	2005	eu	2518
Plan de sueño a tu ritmo	2006	es	2519
Lo egiteko plana zure erritmoan	2007	eu	2519
Encuentros grupales	2008	es	2520
Talde bilerak	2009	eu	2520
¿Hablamos?'	2010	es	2521
Hitz egiten dugu?	2011	eu	2521
Consulta de 1hora	2012	es	2522
1 orduko kontsulta	2013	eu	2522
Plan de sueño con mi seguimiento	2014	es	2523
Lo egiteko plana nire jarraipenarekin	2015	eu	2523
Plan de sueño conmigo pero a tu ritmo	2016	es	2524
Amets plana nirekin baina zure erritmoan	2017	eu	2524
Plan de sueño a tu ritmo	2018	es	2525
Lo egiteko plana zure erritmoan	2019	eu	2525
Encuentros grupales	2020	es	2526
Talde bilerak	2021	eu	2526
¿Hablamos?'	2022	es	2527
Hitz egiten dugu?	2023	eu	2527
Consulta de 1hora	2024	es	2528
1 orduko kontsulta	2025	eu	2528
Plan de sueño con mi seguimiento	2026	es	2529
Lo egiteko plana nire jarraipenarekin	2027	eu	2529
Plan de sueño conmigo pero a tu ritmo	2028	es	2530
Amets plana nirekin baina zure erritmoan	2029	eu	2530
Plan de sueño a tu ritmo	2030	es	2531
Lo egiteko plana zure erritmoan	2031	eu	2531
Encuentros grupales	2032	es	2532
Talde bilerak	2033	eu	2532
¿Hablamos?'	2034	es	2533
Hitz egiten dugu?	2035	eu	2533
Consulta de 1hora	2076	es	2554
1 orduko kontsulta	2077	eu	2554
Plan de sueño con mi seguimiento	2078	es	2555
Lo egiteko plana nire jarraipenarekin	2079	eu	2555
Plan de sueño conmigo pero a tu ritmo	2080	es	2556
Amets plana nirekin baina zure erritmoan	2081	eu	2556
Plan de sueño a tu ritmo	2082	es	2557
Lo egiteko plana zure erritmoan	2083	eu	2557
Encuentros grupales	2084	es	2558
Talde bilerak	2085	eu	2558
\.


--
-- Data for Name: _pages_v_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_locales (version_slug, id, _locale, _parent_id, version_title, version_hero_title, version_hero_text, version_hero_subtext, version_meta_title, version_meta_image_id, version_meta_description) FROM stdin;
contact	946	es	203	Contact	\N	\N	\N	Contacto | Agenda tu Consulta de Sueño Infantil - Aitama	28	¿Listo para mejorar el sueño de tu bebé? Contáctame para agendar tu primera consulta. Respondo en 24h. Empecemos a construir mejores noches juntos.
kontaktua	947	eu	203	Kontaktua	\N	\N	\N	Kontaktua | Programatu zure Haur Loaren Kontsulta - Aitama	\N	\N
contact	948	es	204	Contact	\N	\N	\N	Contacto | Agenda tu Consulta de Sueño Infantil - Aitama	28	¿Listo para mejorar el sueño de tu bebé? Contáctame para agendar tu primera consulta. Respondo en 24h. Empecemos a construir mejores noches juntos.
kontaktua	949	eu	204	Kontaktua	\N	\N	\N	Kontaktua | Programatu zure Haur Loaren Kontsulta - Aitama	28	Prest zure haurraren loa hobetzeko? Jarri harremanetan zure lehen kontsulta programatzeko. 24 ordutan erantzuten dut. Has gaitezen gau hobeak eraikitzen elkarrekin.
contact	950	es	205	Contact	\N	\N	\N	Contacto | Agenda tu Consulta de Sueño Infantil - Aitama	28	¿Listo para mejorar el sueño de tu bebé? Contáctame para agendar tu primera consulta. Respondo en 24h. Empecemos a construir mejores noches juntos.
kontaktua	951	eu	205	Kontaktua	\N	\N	\N	Kontaktua | Programatu zure Haur Loaren Kontsulta - Aitama	28	Prest zure haurraren loa hobetzeko? Jarri harremanetan zure lehen kontsulta programatzeko. 24 ordutan erantzuten dut. Has gaitezen gau hobeak eraikitzen elkarrekin.
about	572	es	120	About	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	\N	\N	\N
niri-buruz	573	eu	120	Niri buruz	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	\N	\N	\N
inicio	972	es	216	Inicio	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Aitama Sleep Coaching | Asesoría del Sueño Infantil Personalizada	28	Ayudo a familias a conseguir noches tranquilas con métodos respetuosos. Asesoría del sueño infantil personalizada, sin llanto. Mejora el descanso de tu bebé hoy.
sarrera	973	eu	216	Sarrera	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	Aitama Sleep Coaching | Lo Haur Infantilaren Aholkularitza Pertsonalizatua	28	Familiei gau lasaiak lortzen laguntzen diet metodo errespetuzkoekin. Lo haur infantilaren aholkularitza pertsonalizatua, negarrik gabe. Hobetu zure hauraren atsedena gaur.
about	574	es	121	About	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	\N	\N	\N
niri-buruz	575	eu	121	Niri buruz	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	\N	\N	\N
about	576	es	122	About	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	\N	\N	\N
niri-buruz	577	eu	122	Niri buruz	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	\N	\N	\N
about	916	es	188	About	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Sobre Mí | Aitama - Especialista en Sueño Infantil	\N	Ayudo a familias a conseguir noches tranquilas con métodos respetuosos. Asesoría del sueño infantil personalizada, sin llanto. Mejora el descanso de tu bebé hoy.
niri-buruz	917	eu	188	Niri buruz	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	\N	\N	\N
about	918	es	189	About	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Sobre Mí | Aitama - Especialista en Sueño Infantil	28	Ayudo a familias a conseguir noches tranquilas con métodos respetuosos. Asesoría del sueño infantil personalizada, sin llanto. Mejora el descanso de tu bebé hoy.
niri-buruz	919	eu	189	Niri buruz	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	\N	\N	\N
inicio	484	es	113	Inicio	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	\N	\N	\N
sarrera	485	eu	113	Sarrera	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	\N	\N	\N
inicio	952	es	206	Inicio	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Aitama Sleep Coaching | Haurren Loaren Aholkularitza Pertsonalizatua	28	Ayudo a familias a conseguir noches tranquilas con métodos respetuosos. Asesoría del sueño infantil personalizada, sin llanto. Mejora el descanso de tu bebé hoy.
sarrera	953	eu	206	Sarrera	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	Aitama Sleep Coaching | Lo Haur Infantilaren Aholkularitza Pertsonalizatua	28	Familiei gau lasaiak lortzen laguntzen diet metodo errespetuzkoekin. Lo haur infantilaren aholkularitza pertsonalizatua, negarrik gabe. Hobetu zure hauraren atsedena gaur.
services	960	es	210	Services	Quiero ofrecerte algo que realmente se adapte a tus necesidades.	Cada programa esta diseñado para cubrir unas necesidades diferentes, dependiendo de la edad, situación u objetivos podrás elegir el que mejor se adapte.	He creado unos programas, pero si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.	Servicios de Asesoría del Sueño | Aitama Sleep Coaching	28	Planes personalizados de asesoría del sueño: consultas online, seguimiento continuo y apoyo para establecer rutinas saludables. Elige el plan ideal para tu familia.
zerbitzuak	961	eu	210	Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. 	Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.	Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.	Haur Loaren Aholkularitza Zerbitzuak | Aitama Sleep Coaching	28	Aholkularitza plan pertsonalizatuak: online kontsultak, jarraipena eta errutina osasuntsuak ezartzeko laguntza. Aukeratu zure familiarentzat plan egokia.
servicios	974	es	217	Services	Quiero ofrecerte algo que realmente se adapte a tus necesidades.	Cada programa esta diseñado para cubrir unas necesidades diferentes, dependiendo de la edad, situación u objetivos podrás elegir el que mejor se adapte.	He creado unos programas, pero si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.	Servicios de Asesoría del Sueño | Aitama Sleep Coaching	28	Planes personalizados de asesoría del sueño: consultas online y seguimiento continuo. Elige el plan ideal para tu familia.
zerbitzuak	975	eu	217	Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. 	Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.	Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.	Haur Loaren Aholkularitza Zerbitzuak | Aitama Sleep Coaching	28	Aholkularitza plan pertsonalizatuak: online kontsultak, jarraipena eta errutina osasuntsuak ezartzeko laguntza. Aukeratu zure familiarentzat plan egokia.
contact	898	es	182	Contact	\N	\N	\N	\N	\N	\N
\N	899	eu	182	\N	\N	\N	\N	\N	\N	\N
contact	900	es	183	Contact	\N	\N	\N	\N	\N	\N
\N	901	eu	183	\N	\N	\N	\N	\N	\N	\N
about	920	es	190	About	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Sobre Mí | Aitama - Especialista en Sueño Infantil	28	Soy Aitana, asesora certificada en sueño infantil. Conoce mi experiencia, formación y enfoque respetuoso para ayudar a tu familia a descansar mejor.
niri-buruz	921	eu	190	Niri buruz	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	\N	\N	\N
inicio	954	es	207	Inicio	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Asesoría del Sueño Infantil Personalizada	28	Ayudo a familias a conseguir noches tranquilas con métodos respetuosos. Asesoría del sueño infantil personalizada, sin llanto. Mejora el descanso de tu bebé hoy.
sarrera	955	eu	207	Sarrera	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	Aitama Sleep Coaching | Lo Haur Infantilaren Aholkularitza Pertsonalizatua	28	Familiei gau lasaiak lortzen laguntzen diet metodo errespetuzkoekin. Lo haur infantilaren aholkularitza pertsonalizatua, negarrik gabe. Hobetu zure hauraren atsedena gaur.
inicio	956	es	208	Inicio	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Aitama Sleep Coaching | Asesoría del Sueño Infantil Personalizada	28	Ayudo a familias a conseguir noches tranquilas con métodos respetuosos. Asesoría del sueño infantil personalizada, sin llanto. Mejora el descanso de tu bebé hoy.
sarrera	957	eu	208	Sarrera	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	Aitama Sleep Coaching | Lo Haur Infantilaren Aholkularitza Pertsonalizatua	28	Familiei gau lasaiak lortzen laguntzen diet metodo errespetuzkoekin. Lo haur infantilaren aholkularitza pertsonalizatua, negarrik gabe. Hobetu zure hauraren atsedena gaur.
inicio	958	es	209	Inicio	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Aitama Sleep Coaching | Asesoría del Sueño Infantil Personalizada	28	Ayudo a familias a conseguir noches tranquilas con métodos respetuosos. Asesoría del sueño infantil personalizada, sin llanto. Mejora el descanso de tu bebé hoy.
sarrera	959	eu	209	Sarrera	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	Aitama Sleep Coaching | Lo Haur Infantilaren Aholkularitza Pertsonalizatua	28	Familiei gau lasaiak lortzen laguntzen diet metodo errespetuzkoekin. Lo haur infantilaren aholkularitza pertsonalizatua, negarrik gabe. Hobetu zure hauraren atsedena gaur.
contact	902	es	184	Contact	\N	\N	\N	\N	\N	\N
\N	903	eu	184	\N	\N	\N	\N	\N	\N	\N
services	922	es	191	Services	Quiero ofrecerte algo que realmente se adapte a tus necesidades.	Cada programa esta diseñado para cubrir unas necesidades diferentes, dependiendo de la edad, situación u objetivos podrás elegir el que mejor se adapte.	He creado unos programas, pero si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.	Servicios de Asesoría del Sueño Infantil | Aitama Sleep Coaching	\N	\N
zerbitzuak	923	eu	191	Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. 	Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.	Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.	\N	\N	\N
services	924	es	192	Services	Quiero ofrecerte algo que realmente se adapte a tus necesidades.	Cada programa esta diseñado para cubrir unas necesidades diferentes, dependiendo de la edad, situación u objetivos podrás elegir el que mejor se adapte.	He creado unos programas, pero si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.	Servicios de Asesoría del Sueño Infantil | Aitama Sleep Coaching	28	Planes personalizados de asesoría del sueño: consultas online, seguimiento continuo y apoyo para establecer rutinas saludables. Elige el plan ideal para tu familia.
zerbitzuak	925	eu	192	Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. 	Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.	Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.	\N	\N	\N
services	962	es	211	Services	Quiero ofrecerte algo que realmente se adapte a tus necesidades.	Cada programa esta diseñado para cubrir unas necesidades diferentes, dependiendo de la edad, situación u objetivos podrás elegir el que mejor se adapte.	He creado unos programas, pero si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.	Servicios de Asesoría del Sueño | Aitama Sleep Coaching	28	Planes personalizados de asesoría del sueño: consultas online y seguimiento continuo. Elige el plan ideal para tu familia.
zerbitzuak	963	eu	211	Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. 	Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.	Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.	Haur Loaren Aholkularitza Zerbitzuak | Aitama Sleep Coaching	28	Aholkularitza plan pertsonalizatuak: online kontsultak, jarraipena eta errutina osasuntsuak ezartzeko laguntza. Aukeratu zure familiarentzat plan egokia.
services	964	es	212	Services	Quiero ofrecerte algo que realmente se adapte a tus necesidades.	Cada programa esta diseñado para cubrir unas necesidades diferentes, dependiendo de la edad, situación u objetivos podrás elegir el que mejor se adapte.	He creado unos programas, pero si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.	Servicios de Asesoría del Sueño | Aitama Sleep Coaching	28	Planes personalizados de asesoría del sueño: consultas online y seguimiento continuo. Elige el plan ideal para tu familia.
zerbitzuak	965	eu	212	Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. 	Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.	Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.	Haur Loaren Aholkularitza Zerbitzuak | Aitama Sleep Coaching	28	Aholkularitza plan pertsonalizatuak: online kontsultak, jarraipena eta errutina osasuntsuak ezartzeko laguntza. Aukeratu zure familiarentzat plan egokia.
contact	904	es	185	Contact	\N	\N	\N	\N	\N	\N
kontaktua	905	eu	185	Kontaktua	\N	\N	\N	\N	\N	\N
contact	926	es	193	Contact	\N	\N	\N	Contacto | Agenda tu Consulta de Sueño Infantil - Aitama	\N	\N
kontaktua	927	eu	193	Kontaktua	\N	\N	\N	\N	\N	\N
contact	928	es	194	Contact	\N	\N	\N	Contacto | Agenda tu Consulta de Sueño Infantil - Aitama	28	¿Listo para mejorar el sueño de tu bebé? Contáctame para agendar tu primera consulta. Respondo en 24h. Empecemos a construir mejores noches juntos.
kontaktua	929	eu	194	Kontaktua	\N	\N	\N	\N	\N	\N
contacto	966	es	213	Contact	\N	\N	\N	Contacto | Agenda tu Consulta de Sueño Infantil - Aitama	28	¿Listo para mejorar el sueño de tu bebé? Contáctame para agendar tu primera consulta. Respondo en 24h. Empecemos a construir mejores noches juntos.
kontaktua	967	eu	213	Kontaktua	\N	\N	\N	Kontaktua | Programatu zure Haur Loaren Kontsulta - Aitama	28	Prest zure haurraren loa hobetzeko? Jarri harremanetan zure lehen kontsulta programatzeko. 24 ordutan erantzuten dut. Has gaitezen gau hobeak eraikitzen elkarrekin.
inicio	930	es	195	Inicio	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Aitama Sleep Coaching | Asesoría del Sueño Infantil Personalizada	28	Ayudo a familias a conseguir noches tranquilas con métodos respetuosos. Asesoría del sueño infantil personalizada, sin llanto. Mejora el descanso de tu bebé hoy.
sarrera	931	eu	195	Sarrera	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	Aitama Sleep Coaching | Lo Haur Infantilaren Aholkularitza Pertsonalizatua	\N	\N
inicio	932	es	196	Inicio	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Aitama Sleep Coaching | Asesoría del Sueño Infantil Personalizada	28	Ayudo a familias a conseguir noches tranquilas con métodos respetuosos. Asesoría del sueño infantil personalizada, sin llanto. Mejora el descanso de tu bebé hoy.
sarrera	933	eu	196	Sarrera	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	Aitama Sleep Coaching | Lo Haur Infantilaren Aholkularitza Pertsonalizatua	28	Familiei gau lasaiak lortzen laguntzen diet metodo errespetuzkoekin. Lo haur infantilaren aholkularitza pertsonalizatua, negarrik gabe. Hobetu zure hauraren atsedena gaur.
sobre-mi	968	es	214	About	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Sobre Mí | Aitama - Especialista en Sueño Infantil	28	Soy Aitana, asesora certificada en sueño infantil. Conoce mi experiencia, formación y enfoque respetuoso para ayudar a tu familia a descansar mejor.
niri-buruz	969	eu	214	Niri buruz	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	Niri buruz |  Aitama - Haur Loaren Espezialista	28	Aitana naiz, haur loaren aholkulari ziurtagiria. Ezagutu nire esperientzia, prestakuntza eta ikuspegi errespetuzkoa zure familia hobeto atsedentzeko laguntzeko.
about	934	es	197	About	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Sobre Mí | Aitama - Especialista en Sueño Infantil	28	Soy Aitana, asesora certificada en sueño infantil. Conoce mi experiencia, formación y enfoque respetuoso para ayudar a tu familia a descansar mejor.
niri-buruz	935	eu	197	Niri buruz	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	Niri buruz |  Aitama - Haur Loaren Espezialista	\N	\N
about	936	es	198	About	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Sobre Mí | Aitama - Especialista en Sueño Infantil	28	Soy Aitana, asesora certificada en sueño infantil. Conoce mi experiencia, formación y enfoque respetuoso para ayudar a tu familia a descansar mejor.
niri-buruz	937	eu	198	Niri buruz	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	Niri buruz |  Aitama - Haur Loaren Espezialista	28	Aitana naiz, haur loaren aholkulari ziurtagiria. Ezagutu nire esperientzia, prestakuntza eta ikuspegi errespetuzkoa zure familia hobeto atsedentzeko laguntzeko.
about	938	es	199	About	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Sobre Mí | Aitama - Especialista en Sueño Infantil	28	Soy Aitana, asesora certificada en sueño infantil. Conoce mi experiencia, formación y enfoque respetuoso para ayudar a tu familia a descansar mejor.
niri-buruz	939	eu	199	Niri buruz	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	Niri buruz |  Aitama - Haur Loaren Espezialista	28	Aitana naiz, haur loaren aholkulari ziurtagiria. Ezagutu nire esperientzia, prestakuntza eta ikuspegi errespetuzkoa zure familia hobeto atsedentzeko laguntzeko.
servicios	970	es	215	Services	Quiero ofrecerte algo que realmente se adapte a tus necesidades.	Cada programa esta diseñado para cubrir unas necesidades diferentes, dependiendo de la edad, situación u objetivos podrás elegir el que mejor se adapte.	He creado unos programas, pero si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.	Servicios de Asesoría del Sueño | Aitama Sleep Coaching	28	Planes personalizados de asesoría del sueño: consultas online y seguimiento continuo. Elige el plan ideal para tu familia.
zerbitzuak	971	eu	215	Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. 	Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.	Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.	Haur Loaren Aholkularitza Zerbitzuak | Aitama Sleep Coaching	28	Aholkularitza plan pertsonalizatuak: online kontsultak, jarraipena eta errutina osasuntsuak ezartzeko laguntza. Aukeratu zure familiarentzat plan egokia.
inicio	910	es	186	Inicio	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Aitama Sleep Coaching | Asesoría del Sueño Infantil Personalizada	28	Ayudo a familias a conseguir noches tranquilas con métodos respetuosos. Asesoría del sueño infantil personalizada, sin llanto. Mejora el descanso de tu bebé hoy.
sarrera	911	eu	186	Sarrera	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	\N	\N	\N
inicio	912	es	187	Inicio	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Aitama Sleep Coaching | Asesoría del Sueño Infantil Personalizada	28	Ayudo a familias a conseguir noches tranquilas con métodos respetuosos. Asesoría del sueño infantil personalizada, sin llanto. Mejora el descanso de tu bebé hoy.
sarrera	913	eu	187	Sarrera	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	\N	\N	\N
services	940	es	200	Services	Quiero ofrecerte algo que realmente se adapte a tus necesidades.	Cada programa esta diseñado para cubrir unas necesidades diferentes, dependiendo de la edad, situación u objetivos podrás elegir el que mejor se adapte.	He creado unos programas, pero si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.	Servicios de Asesoría del Sueño Infantil | Aitama Sleep Coaching	28	Planes personalizados de asesoría del sueño: consultas online, seguimiento continuo y apoyo para establecer rutinas saludables. Elige el plan ideal para tu familia.
zerbitzuak	941	eu	200	Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. 	Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.	Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.	Haur Loaren Aholkularitza Zerbitzuak | Aitama Sleep Coaching	\N	\N
services	942	es	201	Services	Quiero ofrecerte algo que realmente se adapte a tus necesidades.	Cada programa esta diseñado para cubrir unas necesidades diferentes, dependiendo de la edad, situación u objetivos podrás elegir el que mejor se adapte.	He creado unos programas, pero si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.	Servicios de Asesoría del Sueño Infantil | Aitama Sleep Coaching	28	Planes personalizados de asesoría del sueño: consultas online, seguimiento continuo y apoyo para establecer rutinas saludables. Elige el plan ideal para tu familia.
zerbitzuak	943	eu	201	Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. 	Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.	Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.	Haur Loaren Aholkularitza Zerbitzuak | Aitama Sleep Coaching	28	Aholkularitza plan pertsonalizatuak: online kontsultak, jarraipena eta errutina osasuntsuak ezartzeko laguntza. Aukeratu zure familiarentzat plan egokia.
services	944	es	202	Services	Quiero ofrecerte algo que realmente se adapte a tus necesidades.	Cada programa esta diseñado para cubrir unas necesidades diferentes, dependiendo de la edad, situación u objetivos podrás elegir el que mejor se adapte.	He creado unos programas, pero si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.	Servicios de Asesoría del Sueño Infantil | Aitama Sleep Coaching	28	Planes personalizados de asesoría del sueño: consultas online, seguimiento continuo y apoyo para establecer rutinas saludables. Elige el plan ideal para tu familia.
zerbitzuak	945	eu	202	Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. 	Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.	Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.	Haur Loaren Aholkularitza Zerbitzuak | Aitama Sleep Coaching	28	Aholkularitza plan pertsonalizatuak: online kontsultak, jarraipena eta errutina osasuntsuak ezartzeko laguntza. Aukeratu zure familiarentzat plan egokia.
\.


--
-- Data for Name: _pages_v_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_rels (id, "order", parent_id, path, pages_id) FROM stdin;
772	\N	210	version.hero.links.0.link.reference	3
773	\N	211	version.hero.links.0.link.reference	3
774	\N	212	version.hero.links.0.link.reference	3
775	\N	214	version.hero.links.0.link.reference	3
776	\N	215	version.hero.links.0.link.reference	3
777	\N	216	version.hero.links.0.link.reference	2
778	\N	217	version.hero.links.0.link.reference	3
603	\N	120	version.hero.links.0.link.reference	3
604	\N	121	version.hero.links.0.link.reference	3
605	\N	122	version.hero.links.0.link.reference	3
558	\N	113	version.hero.links.0.link.reference	2
559	\N	113	version.layout.4.link.reference	2
752	\N	186	version.hero.links.0.link.reference	2
753	\N	187	version.hero.links.0.link.reference	2
755	\N	188	version.hero.links.0.link.reference	3
756	\N	189	version.hero.links.0.link.reference	3
757	\N	190	version.hero.links.0.link.reference	3
758	\N	191	version.hero.links.0.link.reference	3
759	\N	192	version.hero.links.0.link.reference	3
760	\N	195	version.hero.links.0.link.reference	2
761	\N	196	version.hero.links.0.link.reference	2
762	\N	197	version.hero.links.0.link.reference	3
763	\N	198	version.hero.links.0.link.reference	3
764	\N	199	version.hero.links.0.link.reference	3
765	\N	200	version.hero.links.0.link.reference	3
766	\N	201	version.hero.links.0.link.reference	3
767	\N	202	version.hero.links.0.link.reference	3
768	\N	206	version.hero.links.0.link.reference	2
769	\N	207	version.hero.links.0.link.reference	2
770	\N	208	version.hero.links.0.link.reference	2
771	\N	209	version.hero.links.0.link.reference	2
\.


--
-- Data for Name: _pages_v_version_hero_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_version_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_appearance, _uuid) FROM stdin;
1	188	533	reference	\N	\N	default	696b653168f516778d0ed28f
1	189	534	reference	\N	\N	default	696b653168f516778d0ed28f
1	190	535	reference	\N	\N	default	696b653168f516778d0ed28f
1	191	536	reference	\N	\N	default	696b823a6af15f6661f81ef8
1	192	537	reference	\N	\N	default	696b823a6af15f6661f81ef8
1	195	538	reference	\N	\N	default	69695248888cd85a74058c82
1	196	539	reference	\N	\N	default	69695248888cd85a74058c82
1	197	540	reference	\N	\N	default	696b653168f516778d0ed28f
1	198	541	reference	\N	\N	default	696b653168f516778d0ed28f
1	199	542	reference	\N	\N	default	696b653168f516778d0ed28f
1	200	543	reference	\N	\N	default	696b823a6af15f6661f81ef8
1	201	544	reference	\N	\N	default	696b823a6af15f6661f81ef8
1	202	545	reference	\N	\N	default	696b823a6af15f6661f81ef8
1	206	546	reference	\N	\N	default	69695248888cd85a74058c82
1	207	547	reference	\N	\N	default	69695248888cd85a74058c82
1	208	548	reference	\N	\N	default	69695248888cd85a74058c82
1	209	549	reference	\N	\N	default	69695248888cd85a74058c82
1	210	550	reference	\N	\N	default	696b823a6af15f6661f81ef8
1	211	551	reference	\N	\N	default	696b823a6af15f6661f81ef8
1	212	552	reference	\N	\N	default	696b823a6af15f6661f81ef8
1	214	553	reference	\N	\N	default	696b653168f516778d0ed28f
1	215	554	reference	\N	\N	default	696b823a6af15f6661f81ef8
1	216	555	reference	\N	\N	default	69695248888cd85a74058c82
1	217	556	reference	\N	\N	default	696b823a6af15f6661f81ef8
1	120	380	reference	\N	\N	default	696b653168f516778d0ed28f
1	121	381	reference	\N	\N	default	696b653168f516778d0ed28f
1	122	382	reference	\N	\N	default	696b653168f516778d0ed28f
1	113	336	reference	\N	\N	default	69695248888cd85a74058c82
1	186	530	reference	\N	\N	default	69695248888cd85a74058c82
1	187	531	reference	\N	\N	default	69695248888cd85a74058c82
\.


--
-- Data for Name: _pages_v_version_hero_links_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public._pages_v_version_hero_links_locales (link_label, id, _locale, _parent_id) FROM stdin;
Ponte en contacto	423	es	547
Jarri harremanetan	424	eu	547
Ponte en contacto	141	es	380
Jarri haremanetan	142	eu	380
Ponte en contacto	143	es	381
Jarri haremanetan	144	eu	381
Ponte en contacto	145	es	382
Jarri haremanetan	146	eu	382
Ponte en contacto	425	es	548
Jarri harremanetan	426	eu	548
Ponte en contacto	79	es	336
Jarri harremanetan	80	eu	336
Ponte en contacto	427	es	549
Jarri harremanetan	428	eu	549
Ponte en contacto	429	es	550
Jarri harremanetan	430	eu	550
Ponte en contacto	431	es	551
Jarri harremanetan	432	eu	551
Ponte en contacto	433	es	552
Jarri harremanetan	434	eu	552
Ponte en contacto	435	es	553
Jarri haremanetan	436	eu	553
Ponte en contacto	437	es	554
Jarri harremanetan	438	eu	554
Ponte en contacto	439	es	555
Jarri harremanetan	440	eu	555
Ponte en contacto	441	es	556
Jarri harremanetan	442	eu	556
Ponte en contacto	389	es	530
Jarri harremanetan	390	eu	530
Ponte en contacto	391	es	531
Jarri harremanetan	392	eu	531
Ponte en contacto	395	es	533
Jarri haremanetan	396	eu	533
Ponte en contacto	397	es	534
Jarri haremanetan	398	eu	534
Ponte en contacto	399	es	535
Jarri haremanetan	400	eu	535
Ponte en contacto	401	es	536
Jarri harremanetan	402	eu	536
Ponte en contacto	403	es	537
Jarri harremanetan	404	eu	537
Ponte en contacto	405	es	538
Jarri harremanetan	406	eu	538
Ponte en contacto	407	es	539
Jarri harremanetan	408	eu	539
Ponte en contacto	409	es	540
Jarri haremanetan	410	eu	540
Ponte en contacto	411	es	541
Jarri haremanetan	412	eu	541
Ponte en contacto	413	es	542
Jarri haremanetan	414	eu	542
Ponte en contacto	415	es	543
Jarri harremanetan	416	eu	543
Ponte en contacto	417	es	544
Jarri harremanetan	418	eu	544
Ponte en contacto	419	es	545
Jarri harremanetan	420	eu	545
Ponte en contacto	421	es	546
Jarri harremanetan	422	eu	546
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.media (id, alt, updated_at, created_at, url, thumbnail_u_r_l, filename, mime_type, filesize, width, height, focal_x, focal_y, unpic_url) FROM stdin;
16	\N	2026-01-15 18:19:32.29+01	2026-01-15 18:19:32.29+01	/api/media/file/home-hero-image.webp	/api/media/file/home-hero-image.webp	home-hero-image.webp	image/webp	53416	1440	951	50	50	\N
17	\N	2026-01-15 21:43:14.853+01	2026-01-15 21:43:14.853+01	/api/media/file/minnie-zhou-0hiUWSi7jvs-unsplash.webp	/api/media/file/minnie-zhou-0hiUWSi7jvs-unsplash.webp	minnie-zhou-0hiUWSi7jvs-unsplash.webp	image/webp	9406	600	400	50	50	\N
18	\N	2026-01-15 21:54:53.517+01	2026-01-15 21:54:53.517+01	/api/media/file/IMG-20190123-WA0024_2.jpg	/api/media/file/IMG-20190123-WA0024_2.jpg	IMG-20190123-WA0024_2.jpg	image/jpeg	241340	1600	1200	50	50	\N
19	\N	2026-01-15 22:18:20.011+01	2026-01-15 22:18:20.011+01	/api/media/file/isaac-quesada-1tsLPETXzUU-unsplash.webp	/api/media/file/isaac-quesada-1tsLPETXzUU-unsplash.webp	isaac-quesada-1tsLPETXzUU-unsplash.webp	image/webp	13970	600	400	50	50	\N
20	\N	2026-01-15 22:19:13.029+01	2026-01-15 22:19:13.029+01	/api/media/file/annie-spratt-86KXmkRWAMA-unsplash.webp	/api/media/file/annie-spratt-86KXmkRWAMA-unsplash.webp	annie-spratt-86KXmkRWAMA-unsplash.webp	image/webp	35824	600	376	50	50	\N
21	\N	2026-01-15 22:19:45.524+01	2026-01-15 22:19:45.524+01	/api/media/file/igordoon-primus-K_PFVUGNwkU-unsplash.jpg	/api/media/file/igordoon-primus-K_PFVUGNwkU-unsplash.jpg	igordoon-primus-K_PFVUGNwkU-unsplash.jpg	image/jpeg	3383976	5184	3456	50	50	\N
22	\N	2026-01-15 22:20:20.838+01	2026-01-15 22:20:20.838+01	/api/media/file/kendra-wesley-VX08HByW6gE-unsplash.webp	/api/media/file/kendra-wesley-VX08HByW6gE-unsplash.webp	kendra-wesley-VX08HByW6gE-unsplash.webp	image/webp	13896	600	450	50	50	\N
23	\N	2026-01-15 22:22:15.265+01	2026-01-15 22:22:15.265+01	/api/media/file/baner.png	/api/media/file/baner.png	baner.png	image/png	62414	513	263	50	50	\N
24	\N	2026-01-15 22:27:39.674+01	2026-01-15 22:27:39.674+01	/api/media/file/3d54e9dc-1814-4ea6-a014-d7fe5f5fb648.jpg	/api/media/file/3d54e9dc-1814-4ea6-a014-d7fe5f5fb648.jpg	3d54e9dc-1814-4ea6-a014-d7fe5f5fb648.jpg	image/jpeg	791978	1442	1340	50	50	\N
25	\N	2026-01-15 22:33:35.427+01	2026-01-15 22:33:35.427+01	/api/media/file/testi-img.png	/api/media/file/testi-img.png	testi-img.png	image/png	24759	148	148	50	50	\N
26	\N	2026-01-17 12:56:00.649+01	2026-01-17 12:56:00.649+01	/api/media/file/IMG_20180816_094805_625.jpg	/api/media/file/IMG_20180816_094805_625.jpg	IMG_20180816_094805_625.jpg	image/jpeg	1585611	3016	4032	50	50	\N
27	\N	2026-01-17 12:58:53.715+01	2026-01-17 12:58:53.715+01	/api/media/file/IMG_20181230_095245_777.jpg	/api/media/file/IMG_20181230_095245_777.jpg	IMG_20181230_095245_777.jpg	image/jpeg	1420703	4032	3016	50	50	\N
28	\N	2026-01-17 20:22:26.227+01	2026-01-17 20:22:26.227+01	/api/media/file/baner-1.png	/api/media/file/baner-1.png	baner-1.png	image/png	62414	513	263	50	50	\N
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages (id, updated_at, created_at, slug_lock, hero_media_id, hero_enable_text, published_at, _status, hero_enable_sub_text) FROM stdin;
1	2026-01-15 18:26:02.256+01	2026-01-15 18:21:03.248+01	f	16	\N	\N	draft	\N
5	2026-01-19 10:26:59.865+01	2026-01-17 18:13:19.815+01	f	22	\N	2026-01-09 13:00:00+01	published	\N
3	2026-01-19 10:27:23.307+01	2026-01-17 11:30:52.527+01	t	16	\N	2026-01-09 13:00:00+01	published	\N
2	2026-01-19 10:27:56.023+01	2026-01-15 19:04:11.439+01	t	16	\N	2026-01-01 13:00:00+01	published	\N
4	2026-01-19 10:47:22.252+01	2026-01-17 13:33:56.022+01	t	16	t	2026-01-09 13:00:00+01	published	t
\.


--
-- Data for Name: pages_blocks_content; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_content (_order, _parent_id, _path, id, enable_section_title, enable_title, enable_rich_text, block_name) FROM stdin;
1	3	layout	696b657368f516778d0ed291	t	t	t	Sobre-mi
1	2	layout	696952f1888cd85a74058c84	\N	t	t	Inicio
3	2	layout	6969542a888cd85a74058c86	t	t	t	Servicios
5	2	layout	69695ada692dd42525b58230	t	t	t	Mi trabajo
1	4	layout	696b825f6af15f6661f81efa	t	t	\N	Inicio
3	4	layout	696b83976af15f6661f81f08	t	t	t	 Consultas           
6	4	layout	696b83f56af15f6661f81f0a	f	t	t	 Plan de sueño personalizado con seguimiento 
9	4	layout	696b84376af15f6661f81f0c	\N	t	t	 Plan de sueño conmigo, pero a tu ritmo 
12	4	layout	696b84676af15f6661f81f0e	\N	t	t	Plan a vuestro ritmo
15	4	layout	696b84a76af15f6661f81f10	\N	t	t	Encuentros grupales
\.


--
-- Data for Name: pages_blocks_content_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_content_locales (section_title, title, rich_text, id, _locale, _parent_id) FROM stdin;
sobre mí	¡Toda una aventura!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Soy Alazne, la maternidad y las noches sin dormir me llevaron a", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "formarme como asesora de sueño infantil.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Mi niño mayor, Inari tiene 4 años. Hasta los dos años no dormíamos más de dos horas seguidas, continuaba dándole pecho a demanda y hacíamos colecho para sobrevivir. Realmente ninguno de los dos descansábamos y yo me despertaba peor de lo que me había acostado.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuando las noches sin dormir son constantes, y al día siguiente hay que trabajar o cuidar de un bebé puede ser un suplicio o una pesadilla que nos afecte emocionalmente. En mi caso, estar con mi bebé era agotador, y las horas del día se me hacían eternas…", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento nos sorprendió la pandemia y aunque yo no lo sabía estaba embarazada de Aia, mi niña pequeña. Mi cuerpo me decía que había llegado el momento y mi mente no daba más de si, todos necesitábamos dormir con urgencia", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Nos pusimos a hacer pequeños cambios a las noches y fue asombroso cómo en unos días comenzaron a disminuir los despertares, parecía magia!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "No me podía creer que podía hacer los cambios con tanto cuidado. Inari no lloró en ningún momento, fue todo tan cuidado que para cuando nos dimos cuenta pudimos cambiarle a su habitación y todos comenzamos a descansar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Toda una aventura!! Os puedo asegurar que el haber vivido esos años de sueño me hace empatizar con las familias, se pasa realmente mal.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En ese momento aprendí muchísimo y me di cuenta de que muchas familias estaban en nuestra misma situación y podía ayudarles a dormir mejor.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Investigué y leí muchísimo sobre las diferentes formas de entender los procesos del sueño. Finalmente decidí formarme en este ámbito y certificarme como Gentle Sleep Coach (asesora del sueño infantil).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Posteriormente, me forme en alimentación infantil, son dos temas qué van de la mano y necesitaba tener toda la información para dar un servicio integral.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En todo este tiempo he ayudado a cientos de familias a mejorar sus noches, tengo todas las herramientas necesarias para ayudaros y apoyaros en esta etapa de crianza... me encantaría ser vuestra guía en este camino hacia un gran cambio que nunca olvidaréis, estoy segura de que formaremos un gran equipo...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "¿Empezamos?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	678	es	696b657368f516778d0ed291
Niri buruz	¡Benetan, abentura bat izan zen!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Alazne naiz, amatasunak eta lorik gabeko gauek haur-loaren aholkulari", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "izatera eraman ninduten.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nire ume zaharrenak, Inarik, 4 urte ditu. Bi urte bete arte ez genuen bi ordu baino gehiago jarraian lo egiten, bularra ematen jarraitzen nuen eskariaren arabera, eta bizirik irauteko ohea partekatzen genuen. Egia esan, biotako inork ez zuen deskantsatzen, eta ni oheratzean baino okerrago esnatzen nintzen", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo gabeko gauak etengabeak direnean, eta hurrengo egunean lan egin behar denean edo haurtxo bat zaindu behar denean, emozionalki eragiten digun oinaze edo amesgaizto bat izan daiteke. Nire kasuan, umetxoarekin egotea nekagarria zen, eta eguneko orduak amaigabeak egiten zitzaizkidan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une hartan, pandemiak harrapatu gintuen, eta nik ez nekien arren, Aia nire neskato txikiarekin haurdun nengoen. Nire gorputzak esaten zidan garaia iritsi zela, eta nire buruak ez zuen gehiago ematen, denok behar genuen lehenbailehen lo egin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Gauetan aldaketa txikiak egiten hasi ginen eta harrigarria izan zen nola egun batzuetan esnatzeak gutxitzen hasi ziren, ¡magia ematen zuen!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ezin nuen sinetsi aldaketak hainbesteko kontuarekin egin nitzakeenik. Inarik ez zuen negarrik inoiz egin, hain kontuz ibili ginen, ezen konturatu ginenerako bere gelara aldatu ahal izan genuen eta denok atseden hartzen hasi ginen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Benetan, abentura bat izan zen!! Ziurta diezazueket lo-urte horiek bizi izanak laguntzen didala enpatia izaten familiekin; izan ere, oso gaizki pasatzen da.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Une horretan asko ikasi nuen eta konturatu nintzen familia asko gure egoera berean zeudela eta hobeto lo egiten lagun niezaiekeela.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Asko ikertu eta irakurri nuen loaren prozesuak ulertzeko moduei buruz. Azkenean, arlo horretan trebatzea erabaki nuen, eta Gentle Sleep Coach (haurren loaren aholkularia) egiaztagiria lortu nuen.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ondoren, haurren elikaduran trebatu nintzen, eskutik helduta doazen bi gai dira, eta informazio guztia behar nuen zerbitzu integrala emateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Denbora honetan guztian, ehunka familiari lagundu diet beren gauak hobetzen, behar diren tresna guztiak ditut zuei laguntzeko eta ume-hazten ari zaretenean babesa emateko... ikaragarri gustatuko litzaidake zuen gidaria izatea inoiz ahaztuko ez duzuen aldaketa handi baterako bidean, eta ziur nago talde handi bat osatuko dugula...", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "Hasiko al gara?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	679	eu	696b657368f516778d0ed291
\N	¡Tengo ganas de conocer tu caso! 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "El apego seguro es aquel que se crea cuando las necesidades fisiológicas y emocionales de vuestro peque siempre están atendidas. Si lo hacemos durante el día, dándole cariño, atención y apoyo en todos los momentos, no únicamente en los malos, ¿Cómo no hacerlo a la noche también? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	692	es	696952f1888cd85a74058c84
\N	Zure kasuaren berri izateko irrikitan nago!	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Gure txikiaren behar fisiologiko eta emozionalak zaintzen ditugunean, atxikimendu seguru bat lortzen dugu. Guzti hau, egunean zehar lortzen dugu; maitasuna eskeiniz, behar duenean lagunduz, bere babesleku izanda, eta ez bakarrik momentu txarretan. ¿Nola ez dugu ba, gauean ere egingo?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	693	eu	696952f1888cd85a74058c84
Servicios	Te ofrezco algo que realmente se adapta a tus necesidades 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué se despierta a los 30-45 min de haberlo acostado?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Sólo se duerme comiendo o en movimiento?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Por qué no puedo dejarlo en la cuna?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Cómo puedo ayudar a mi peque para que duerma durante toda la noche?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¿Se despierta cada 2 horas?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si te haces alguna o todas estas preguntas, escríbeme, Te aseguro que podemos cambiarlo.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "He creado unos programas que cubren muchas de las situaciones que otros como tú han compartido conmigo, échales un vistazo, y si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Te cuento un poco más, cada programa está diseñado para cubrir unas necesidades diferentes, dependiendo del momento, de la edad, la situación, objetivos y ganas.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	694	es	6969542a888cd85a74058c86
Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\t", "type": "tab", "style": "", "detail": 2, "format": 0, "version": 1}, {"mode": "normal", "text": "Zergatik esnatzen da oheratu eta 30-45 minutura? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zergatik ezin dut sehaskan utzi? ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Nola lagundu behar diot nire seme edo alabari gau osoan lo egin dezan?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Galdera hauetakoren bat edo guztiak badituzu, idatzi iezadazu. Ziurtatzen dizut alda ditzakegula.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	695	eu	6969542a888cd85a74058c86
Mi trabajo	Un poquito más	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cada bebé es muy diferente. Su temperamento, situación, edad, dónde duerme, cómo se duerme... Todo influye, así que no puedo aplicar un único método. Estoy certificada como asesora, pero sobre todo mi experiencia me aporta una visión global de cada caso.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Es normal que no des un paso hacia el cambio por miedo a que el bebé lo pase mal. Pero confia en mi, cuando lo hacemos, es asombroso la capacidad que tienen para adaptarse y sentirás que le has hecho un regalo!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Verle dormir, por fín te hará feliz y disfrutaras de esos momentos. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	696	es	69695ada692dd42525b58230
Nire lana	Pixka bat gehiago	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Haur bakoitza oso desberdina da. Beren izaerak, egoerak, adinak, non lo egiten duten, nola lo hartzen duten... Dena eragiten du, beraz, ezin dut metodo bakarra aplikatu. Aholkulari ziurtatua naiz, baina batez ere, nire esperientziak kasu bakoitzaren ikuspegi holistikoa ematen dit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Normala da aldaketa bat egiteko zalantzak izatea haurra haserretzeko beldurrez. Baina sinets iezadazu, egiten dugunean, egokitzeko duten gaitasuna harrigarria da, eta opari bat eman diezula sentituko duzu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Azkenean lo egiten ikusteak zoriontsu egingo zaitu eta une horiek gozatuko dituzu.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	697	eu	69695ada692dd42525b58230
Servicios	No dormir de forma continuada nos cambia la forma de vivir la maternidad.	\N	698	es	696b825f6af15f6661f81efa
Zerbitzuak	Jarraituki lo ez egiteak amatasuna bizitzeko modua aldatzen digu. 	\N	699	eu	696b825f6af15f6661f81efa
Mi Trabajo	Consultas	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Esta opción encajará con lo que necesitas si no quieres o no crees que necesites un plan detallado por escrito. En este caso no te enviaré un plan de sueño personalizado, pero si una guía de sueño que te servirá de guía.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hablaremos durante una hora y pondremos sobre la mesa todas tus dudas. Por mi parte te explicaré qué podéis hacer paso a paso para mejorar vuestras noches. Te recomiendo que tengas listo boli y papel para poder anotar lo más importante. Para sacar más provecho a esta videollamada, te enviaré un cuestionario previo para saber qué temas os gustaría tratar y tener información en general sobre vuestra situación actual.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Después de hacer la llamada podríais enviarme un email con alguna duda que quedase pendiente de resolver o algo que te gustaría consultar tras poner en práctica lo hablado en la llamada.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si en el plazo de un mes, aún necesitas más ayuda, podrás pagar la diferencia y tener un plan completo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	700	es	696b83976af15f6661f81f08
Nire lana	Kontsultak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Aukera hau bat etorriko da behar duzunarekin, baldin eta ez baduzu nahi edo ez baduzu uste idatzizko plan zehatz bat behar duzunik. Kasu horretan ez dizut bidaliko lo-plan pertsonalizatu bat, baina gida gisa balioko dizun lo-gida bat bai.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubetez hitz egingo dugu eta zure zalantza guztiak mahai gainean jarriko ditugu. Nik azalduko dizut zer egin dezakezuen pausoz pauso zuen gauak hobetzeko. Boligrafoa eta papera prest izatea gomendatzen dizut, garrantzitsuena idatzi ahal izateko. Bideo-dei honi etekin handiagoa ateratzeko, aldez aurretik galdetegi bat bidaliko dizut, zer gai jorratu nahiko zenituzketen jakiteko eta, oro har, zuen egungo egoerari buruzko informazioa izateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Deia egin ondoren, mezu elektroniko bat bidal zeniezadakete, argitu gabe dagoen zalantzaren batekin edo deian hitz egindakoa praktikan jarri ondoren kontsultatu nahiko zenukeen zerbaitekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baldin eta hilabeteko epean laguntza gehiago behar baduzu, aldea ordaindu eta plan oso bat eduki ahal izango duzu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 70(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	701	eu	696b83976af15f6661f81f08
\N	Plan de sueño personalizado con seguimiento	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Si tu bebé tiene más de 6 meses y necesitas volver a descansar, te encuentras agotada y sin ánimo de llevarlo por tu cuenta este es el plan que necesitas. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Necesito estudiar vuestro caso con todos los detalles, para diseñar un plan personalizado y ajustarnos al máximos a vuestros objetivos, para eso os enviaré un cuestionario. Tras recibir vuestra respuesta al cuestionario, estableceremos una primera consulta tras la cual definiré un plan, os lo expondré en una videollamada, lo compartiremos y daremos las últimas pinceladas juntos. Si estáis de acuerdo, os lo enviaré todo por escrito y fijaremos un día para comenzar el camino. Os apoyaré en todo el proceso y haré un seguimiento diario durante 3 o 4 semanas. Si queremos adaptarnos al bebé no podemos marcar una fecha exacta. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El seguimiento será vía correo o whatsapp, estaremos en contacto diariamente y siempre que lo necesitéis citaremos una llamada. Una vez finalizado el seguimiento y haber logrado vuestros objetivos haremos una llamada y os enviaré un documento con pautas para futuras situaciones.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Consulta por videollamada para preserntar el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Plan de sueño por escrito para vuestra familia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": " -Seguimiento durante 3 o 4semanas, diario por email o Whatsapp", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Resolución de dudas", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "​-Conclusiones: Un resumen del proceso que habremos llevado a cabo y envío de un documento con recomendaciones para el futuro. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	702	es	696b83f56af15f6661f81f0a
\N	Lo-plan pertsonalizatua, eta jarraipenarekin	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zure haurtxoak 6 hilabete baino gehiago baditu eta berriro atseden hartzeko beharra baduzu, leher eginda bazaude eta zeure kabuz eramateko adorerik gabe, hauxe da behar duzun plana. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen kasua xehetasun guztiekin aztertu behar dut, plan pertsonalizatu bat diseinatzeko eta zuen helburuetara ahalik eta gehien egokitzeko. Horretarako, galdetegi bat bidaliko dizuet. Galdera- sortaren erantzuna jaso ondoren, lehenengo kontsulta bat ezarriko dugu, eta horren ondoren plan bat definituko dut, bideo-dei batean azalduko dizuet, partekatu egingo dugu eta azken zertzeladak elkarrekin emango ditugu. Ados bazaudete, dena idatziz bidaliko dizuet eta egun bat finkatuko dugu bideari ekiteko. Prozesu osoan lagunduko dizuet eta egunero jarraipena egingo dut 3 edo 4 astez. Jarraipena posta edo whatsapp bidez egingo da, egunero egongo gara", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "harremanetan eta behar duzuen guztietan dei bat egingo dugu. Jarraipena amaiturik eta zuen helburuak lortuta, dei bat egingo dugu eta dokumentu bat bidaliko dizuet etorkizuneko egoeretarako jarraibideekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- bideo-dei bidezko kontsulta, plana azaltzeko", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Idatzizko lo-plan pertsonalizatua zuen familiarentzat.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Jarraipena 3 do astez, egunero posta elektronikoz edo Whatsapp bidez", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Zalantzak argitzea", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "- Ondorioak: egingo dugun prozesuaren laburpena, eta etorkizunerako gomendioak jasotzen dituen dokumentu bat bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 340(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	703	eu	696b83f56af15f6661f81f0a
\N	Plan de sueño conmigo, pero a tu ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En un inicio este plan es similar a un plan con mi seguimiento: Haré una valoración previa, un estudio, haremos una videollamada y detallaré el plan de sueño acorde a vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero, a veces no es necesario estar en contacto diario. En ese caso, haremos una llamada 2 veces por semana durante 4 semanas; Veremos la situación, los avances, como continuar… Todo al detalle y vosotros lo iréis poniendo en práctica a vuestro ritmo. Eso sí, siempre que lo necesitéis podéis escribirme con vuestras dudas, sentimientos, avances o lo que queráis contarme. Yo seguiré muy cerquita para todo lo que necesitéis.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Y antes de finalizar el plan, haremos otra videollamada para hablar de la situación final, posibles dudas y os daré algunos tips para el futuro.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	704	es	696b84376af15f6661f81f0c
\N	Amets plana nirekin baina zuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zerbitzu hau nire jarraipenarekin eskeitzen dudan planaren antzekoa da. Zuen kasua aztertuko dut, bideodei batean azalduko dizuet eta idatziko plan bat garatuko dut. Desberdintasuna jarraipenean datza.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Batzuetan ez da beharrezkoa egunero-egunero harremanetan egotea eta astean bitan dei bat eginez familia hobeto moldatzen da. Beti egongo naiz zuei laguntzeko prest, hau da, edozein momentutan hitzegin behar baduzue: zuen sentimenduei buruz, galderak, dudak edo beste edozer buruz, hortxe izango nauzue. Kasu honetan ere 3-4 astetan egongo gara elkarrekin aldaketak pixkanaka, txikiak behar duen arabera, aurrera eramateko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera ondotzat ematen dugunean, azkeneko bideodei bat egingo dugu, etorkizunean gertatu daitezkeen egoerei nola aurre egin eta zuen zalantzak argitzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 295(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	705	eu	696b84376af15f6661f81f0c
\N	Plan a vuestro ritmo	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pero… Si te encuentras con ganas, aún no has llegado al agotamiento total y te queda algo de energía para hacerlo por tu cuenta, entonces puedes elegir un plan sin seguimiento.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "En este caso, también os enviaré un cuestionario inicial para poder estudiar el caso en detalle. Al recibirlo haremos una videollamada para explicaros hasta la última puntilla de cómo llevarlo a cabo, paso a paso y os lo enviaré todo todito por escrito.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Siempre tendréis la opción de contratar el seguimiento. Si no podéis avanzar, os habéis bloqueado, agotado, tenéis dudas… tenéis la opción de solicitar una llamada para reconducir o ayudaros en el punto que estéis, (25 euros).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "El plan incluye:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Cuestionario previo para conocer vuestras necesidades.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Consulta de una hora (presencial, por teléfono o por zoom), para explicar el plan.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Envío de plan de sueño.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Podréis enviarme un email en un plazo de un mes con las dudas que os puedan surgir al poner en marcha el plan", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}], "direction": null, "textFormat": 1}}	706	es	696b84676af15f6661f81f0e
\N	 Plana zeuen erritmoan 	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Baina...gogoz bazaude, oraindik ez bazara erabat agortu eta energia pixka bat geratzen bazaizu zure kabuz egiteko; orduan, jarraipenik gabeko plan bat aukera dezakezu.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Kasu horretan ere hasierako galdetegi bat bidaliko dizuet, kasua zehatz-mehatz aztertu ahal izateko. Jasotzean, bideo-dei bat egingo dugu, prozesua zehatz-mehatz azaltzeko, urratsez urrats, eta den-dena idatziz bidaliko dizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Beti izango duzue jarraipena kontratatzeko aukera. Ezin baduzue aurrera egin, blokeatu bazarete, edo agortu bazarete, edo zalantzak badituzue...aukera daukazue dei bat eskatzeko, zaudeten puntutik aurrera prozesua birbideratzeko edo aurrera egiten laguntzeko (25 euro).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Planak barne hartzen ditu:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "ul", "type": "list", "start": 1, "format": "", "indent": 0, "version": 1, "children": [{"type": "listitem", "value": 1, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zuen beharrak ezagutzeko aldez aurreko galdetegia.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 2, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Ordubeteko kontsulta (aurrez aurrekoa, telefonoz edo zoom bidez), plana azaltzeko.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 3, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Lo-plana bidaltzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}, {"type": "listitem", "value": 4, "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "E-mail bat bidali ahal izango didazue hilabeteko epean, plana abian jartzean sor dakizkizuekeen zalantzekin.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null}], "listType": "bullet", "direction": null}, {"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "€ 100(BEZa barne)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": null, "textStyle": "", "textFormat": 1}], "direction": null, "textFormat": 1}}	707	eu	696b84676af15f6661f81f0e
\N	Encuentros grupales	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pondremos en común las diferentes situaciones personales y os ayudaré a empezar a entender qué ocurre, porqué ocurre y qué opciones tenéis. También hablaremos sobre cómo crear unos hábitos de sueño saludables para nuestro bebe, sobre rutinas, ventanas de sueño y horarios. Os daré trucos y pautas para mejorar alguna situación que no sepáis como afrontar.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Los encuentros pueden ser en tiendas, asociaciones, guarderías, centros de salud, etc.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "¡Ponte en contacto conmigo y hablamos!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero que aprendas muchísimo, que lo disfrutes y que te ayude a alcanzar los objetivos que buscabas cuando accediste.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	708	es	696b84a76af15f6661f81f10
\N	Talde-topaketak	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Egoera pertsonalak bateratuko ditugu, eta lagunduko dizuet ulertzen zer gertatzen den, zergatik gertatzen den eta zer aukera dituzuen. Horrez gain, gure haurtxoarentzako lo-ohitura osasungarriak sortzeko moduari buruz hitz egingo dugu, baita errutinei, lo-leihoei eta ordutegiei buruz ere. Nola aurre egin ez dakizuen egoeraren bat hobetzeko trikimailuak eta jarraibideak emango dizkizuet.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Topaketak dendetan, elkarteetan, haurtzaindegietan, osasun-zentroetan eta abarretan egin daitezke.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Jarri nirekin harremanetan eta hitz egingo dugu!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Espero dut zuk ikaragarri ikastea, eta goza dezazula, eta hona iristean bilatzen zenituen helburuak lortzen laguntzea.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	709	eu	696b84a76af15f6661f81f10
\.


--
-- Data for Name: pages_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_media_block (_order, _parent_id, _path, id, media_id, block_name) FROM stdin;
1	5	layout	696bc5218ca202ca715c5ff6	19	imagen
2	3	layout	696b78b06af15f6661f81ef6	27	Imagen
2	2	layout	696a7df5333a3f60a45f5ea4	18	Imagen
6	2	layout	69695bb4692dd42525b58232	24	Media
5	4	layout	696b966404f2573779325246	26	Imagen
8	4	layout	696b979904f2573779325248	26	Imagen
11	4	layout	696b98a804f257377932524a	26	Imagen
14	4	layout	696bc14f8ca202ca715c5ff2	26	Imagen
16	4	layout	696bc0d08ca202ca715c5ff0	26	Imagen
\.


--
-- Data for Name: pages_blocks_opinion_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_opinion_block (_order, _parent_id, _path, id, block_name, enable_section_title, enable_title, enable_rich_text) FROM stdin;
7	2	layout	69695cb84068806204c29c11	Opiniones	t	t	t
\.


--
-- Data for Name: pages_blocks_opinion_block_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_opinion_block_locales (section_title, title, rich_text, id, _locale, _parent_id) FROM stdin;
Casos de exito	Opiniones, la verdad verdadera	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Hay una frase que se repite siempre cuándo terminamos un proceso; ¡Qué pena no haberte conocido antes!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	18	es	69695cb84068806204c29c11
Arrakasta-istorioak	Iritziak, benetako egia	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "center", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bada esaldi bat prozesu bat amaitzen dugunean beti errepikatzen dena; zer pena zu lehenago ez ezagutu izana!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	19	eu	69695cb84068806204c29c11
\.


--
-- Data for Name: pages_blocks_opinion_block_opinions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_opinion_block_opinions (_order, _parent_id, id, media_id) FROM stdin;
1	69695cb84068806204c29c11	69695d114068806204c29c13	25
2	69695cb84068806204c29c11	69695da54068806204c29c15	25
3	69695cb84068806204c29c11	69695dbc4068806204c29c17	25
\.


--
-- Data for Name: pages_blocks_opinion_block_opinions_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_opinion_block_opinions_locales (opinion, id, _locale, _parent_id) FROM stdin;
Muchas gracias por tu tiempo, tu dedicación y tu profesionalidad. Me he sentido muy acompañada en este proceso, lo que nos ha ayudado a estar seguros de los pasos que íbamos dando. Siento que nos has dado las herramientas necesarias para poder progresar con el sueño de Ivet nosotros solos. De verdad, muchas gracias, nos has ayudado mucho. Ivet, 7 meses	52	es	69695d114068806204c29c13
'Eskerrik asko zure denbora, dedikazio eta profesionaltasunagatik. Oso lagundua sentitu naiz prozesu honetan, eta horrek lagundu digu ematen genituen pausoez ziur egoten. Sentitzen dut beharrezko tresnak eman dizkiguzula Iveten loarekin aurrera egin ahal izateko. Benetan, eskerrik asko, asko lagundu diguzu. Ivet, 7 hilabete',	53	eu	69695d114068806204c29c13
No pensábamos que podríamos llegar a dormir más de dos horas seguidas y sin tener que darle pecho en todos los despertares. Nos has ayudado a tener un orden de alimentación y sueño y ahora nuestro pequeño no está todo el día irritable. Decirte que siempre formarás parte de esta familia a la que has ayudado muchísimo. Pablo 13 meses	54	es	69695da54068806204c29c15
'Ez genuen uste bi ordu jarraian baino gehiago lo egin genezakeenik, esnatze guztietan bularra eman beharrik izan gabe. Elikadura eta lo ordena bat izaten lagundu diguzu, eta orain gure txikia ez da egun osoan haserre egoten. Esan nahi dizugu asko lagundu diozun familia honetako kide izango zarela beti. Pablo, 13 hilabete',	55	eu	69695da54068806204c29c15
Gracias por tu cercanía y hacernos sentir tan cómodos. Has hecho que el cambio a su habitación sea algo divertido, lo ha aceptado sin ningún problema. Con los cambios en los horarios, rutinas y hábitos de sueño que nos has dado le hemos ayudado a descansar mucho mejor. Gracias por todo. Irune, 2 años	56	es	69695dbc4068806204c29c17
'Eskerrik asko zure hurbiltasunagatik eta hain eroso sentiarazteagatik. Beraren logelarako aldaketa dibertigarri egin duzu, arazorik gabe onartu du. Eman dizkiguzun ordutegi, errutina eta lo ohituren aldaketekin askoz hobeto atseden hartzen lagundu diogu. Mila esker guztiagatik. Irune, 2 urte',	57	eu	69695dbc4068806204c29c17
\.


--
-- Data for Name: pages_blocks_price_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_price_block (_order, _parent_id, _path, id, price, block_name) FROM stdin;
4	4	layout	696b929e90bd23d88f628519	70	 Consultas(Precio))
7	4	layout	696b933590bd23d88f62851b	340	 Plan de sueño personalizado con seguimiento (Precio)
10	4	layout	696b936190bd23d88f62851d	295	 Plan de sueño conmigo, pero a tu ritmo (Precio)
13	4	layout	696b939e90bd23d88f62851f	100	 Plan a vuestro ritmo(Precio)
\.


--
-- Data for Name: pages_blocks_sentence; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_sentence (_order, _parent_id, _path, id, block_name) FROM stdin;
3	3	layout	696b672f68f516778d0ed293	Lista Sentecias
8	2	layout	69695e7e4068806204c29c19	Lista de Sentencias
\.


--
-- Data for Name: pages_blocks_sentence_sentences; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_sentence_sentences (_order, _parent_id, id) FROM stdin;
1	696b672f68f516778d0ed293	696b673268f516778d0ed295
2	696b672f68f516778d0ed293	696b675368f516778d0ed297
3	696b672f68f516778d0ed293	696b675d68f516778d0ed299
4	696b672f68f516778d0ed293	696b676568f516778d0ed29b
1	69695e7e4068806204c29c19	69695f714068806204c29c1b
2	69695e7e4068806204c29c19	69695f754068806204c29c1d
3	69695e7e4068806204c29c19	69695f804068806204c29c1f
4	69695e7e4068806204c29c19	69695fa04068806204c29c21
\.


--
-- Data for Name: pages_blocks_sentence_sentences_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_sentence_sentences_locales (title, id, _locale, _parent_id) FROM stdin;
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	129	es	696b673268f516778d0ed295
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	130	eu	696b673268f516778d0ed295
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	131	es	696b675368f516778d0ed297
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	132	eu	696b675368f516778d0ed297
3* Te expondré el plan en una videollamada	133	es	696b675d68f516778d0ed299
3* Plana, bideodeian azalduko dizut	134	eu	696b675d68f516778d0ed299
4* Es el momento de comenzar	135	es	696b676568f516778d0ed29b
4* Hasteko momentua iritsi da!	136	eu	696b676568f516778d0ed29b
1* Elige, o te ayudo a elegir, la opción que mejor se adapte a vuestra situación.Realiza el pago.	137	es	69695f714068806204c29c1b
1* Nire laguntzarekin, edo zeuk aukeratu, zuen egoerara hobekien egokitzen den zerbitzua. Ordainketa burutu	138	eu	69695f714068806204c29c1b
2 * Me pondré en contacto contigo para enviarte un cuestionario y proponerte fechas para la videollamada	139	es	69695f754068806204c29c1d
2* Zurekin harremanetan jarriko naiz galdetegi bat bidaltzeko eta bideodeia egiteko eguna proposatzeko	140	eu	69695f754068806204c29c1d
3* Te expondré el plan en una videollamada	141	es	69695f804068806204c29c1f
3* Plana, bideodeian azalduko dizut	142	eu	69695f804068806204c29c1f
4* Es el momento de comenzar	143	es	69695fa04068806204c29c21
4* Hasteko momentua iritsi da!	144	eu	69695fa04068806204c29c21
\.


--
-- Data for Name: pages_blocks_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_services (_order, _parent_id, _path, id, block_name) FROM stdin;
4	3	layout	696b678368f516778d0ed29d	Lista de Servcios
4	2	layout	696958d8692dd42525b58222	Lista de Servicios
2	4	layout	696b82866af15f6661f81efc	Liste de Servicios
\.


--
-- Data for Name: pages_blocks_services_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_services_services (_order, _parent_id, id, image_id) FROM stdin;
1	696b678368f516778d0ed29d	696b678f68f516778d0ed29f	17
2	696b678368f516778d0ed29d	696b680268f516778d0ed2a1	19
3	696b678368f516778d0ed29d	696b682868f516778d0ed2a3	20
4	696b678368f516778d0ed29d	696b75d36af15f6661f81ef2	21
5	696b678368f516778d0ed29d	696b77a06af15f6661f81ef4	22
1	696958d8692dd42525b58222	696958db692dd42525b58224	17
2	696958d8692dd42525b58222	69695959692dd42525b58226	19
3	696958d8692dd42525b58222	696959b0692dd42525b58228	20
4	696958d8692dd42525b58222	696959d4692dd42525b5822a	21
5	696958d8692dd42525b58222	696959f6692dd42525b5822c	22
6	696958d8692dd42525b58222	69695a27692dd42525b5822e	23
1	696b82866af15f6661f81efc	696b82dd6af15f6661f81efe	17
2	696b82866af15f6661f81efc	696b82f86af15f6661f81f00	19
3	696b82866af15f6661f81efc	696b830c6af15f6661f81f02	20
4	696b82866af15f6661f81efc	696b83246af15f6661f81f04	21
5	696b82866af15f6661f81efc	696b83306af15f6661f81f06	22
\.


--
-- Data for Name: pages_blocks_services_services_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_services_services_locales (title, id, _locale, _parent_id) FROM stdin;
Consulta de 1hora	565	es	696b82dd6af15f6661f81efe
1 orduko kontsulta	566	eu	696b82dd6af15f6661f81efe
Plan de sueño con mi seguimiento	567	es	696b82f86af15f6661f81f00
Lo egiteko plana nire jarraipenarekin	568	eu	696b82f86af15f6661f81f00
Plan de sueño conmigo pero a tu ritmo	569	es	696b830c6af15f6661f81f02
Amets plana nirekin baina zure erritmoan	570	eu	696b830c6af15f6661f81f02
Plan de sueño a tu ritmo	571	es	696b83246af15f6661f81f04
Lo egiteko plana zure erritmoan	572	eu	696b83246af15f6661f81f04
Encuentros grupales	573	es	696b83306af15f6661f81f06
Talde bilerak	574	eu	696b83306af15f6661f81f06
Consulta de 1hora	533	es	696b678f68f516778d0ed29f
1 orduko kontsulta	534	eu	696b678f68f516778d0ed29f
Plan de sueño con mi seguimiento	535	es	696b680268f516778d0ed2a1
Lo egiteko plana nire jarraipenarekin	536	eu	696b680268f516778d0ed2a1
Plan de sueño conmigo pero a tu ritmo	537	es	696b682868f516778d0ed2a3
Amets plana nirekin baina zure erritmoan	538	eu	696b682868f516778d0ed2a3
Plan de sueño a tu ritmo	539	es	696b75d36af15f6661f81ef2
Lo egiteko plana zure erritmoan	540	eu	696b75d36af15f6661f81ef2
Encuentros grupales	541	es	696b77a06af15f6661f81ef4
Talde bilerak	542	eu	696b77a06af15f6661f81ef4
Consulta de 1hora	553	es	696958db692dd42525b58224
1 orduko kontsulta	554	eu	696958db692dd42525b58224
Plan de sueño con mi seguimiento	555	es	69695959692dd42525b58226
Lo egiteko plana nire jarraipenarekin	556	eu	69695959692dd42525b58226
Plan de sueño conmigo pero a tu ritmo	557	es	696959b0692dd42525b58228
Amets plana nirekin baina zure erritmoan	558	eu	696959b0692dd42525b58228
Plan de sueño a tu ritmo	559	es	696959d4692dd42525b5822a
Lo egiteko plana zure erritmoan	560	eu	696959d4692dd42525b5822a
Encuentros grupales	561	es	696959f6692dd42525b5822c
Talde bilerak	562	eu	696959f6692dd42525b5822c
¿Hablamos?'	563	es	69695a27692dd42525b5822e
Hitz egiten dugu?	564	eu	69695a27692dd42525b5822e
\.


--
-- Data for Name: pages_hero_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_appearance) FROM stdin;
1	1	6969230d7bb18757881c7726	reference	\N	\N	default
1	3	696b653168f516778d0ed28f	reference	\N	\N	default
1	2	69695248888cd85a74058c82	reference	\N	\N	default
1	4	696b823a6af15f6661f81ef8	reference	\N	\N	default
\.


--
-- Data for Name: pages_hero_links_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_hero_links_locales (link_label, id, _locale, _parent_id) FROM stdin;
Ponte en contacto	104	es	696b653168f516778d0ed28f
Jarri haremanetan	105	eu	696b653168f516778d0ed28f
Ponte en contacto	108	es	69695248888cd85a74058c82
Jarri harremanetan	109	eu	69695248888cd85a74058c82
Ponte en contacto	110	es	696b823a6af15f6661f81ef8
Jarri harremanetan	111	eu	696b823a6af15f6661f81ef8
\.


--
-- Data for Name: pages_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_locales (slug, id, _locale, _parent_id, title, hero_title, hero_text, hero_subtext, meta_title, meta_image_id, meta_description) FROM stdin;
contacto	220	es	5	Contact	\N	\N	\N	Contacto | Agenda tu Consulta de Sueño Infantil - Aitama	28	¿Listo para mejorar el sueño de tu bebé? Contáctame para agendar tu primera consulta. Respondo en 24h. Empecemos a construir mejores noches juntos.
kontaktua	221	eu	5	Kontaktua	\N	\N	\N	Kontaktua | Programatu zure Haur Loaren Kontsulta - Aitama	28	Prest zure haurraren loa hobetzeko? Jarri harremanetan zure lehen kontsulta programatzeko. 24 ordutan erantzuten dut. Has gaitezen gau hobeak eraikitzen elkarrekin.
sobre-mi	222	es	3	About	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Sobre Mí | Aitama - Especialista en Sueño Infantil	28	Soy Aitana, asesora certificada en sueño infantil. Conoce mi experiencia, formación y enfoque respetuoso para ayudar a tu familia a descansar mejor.
niri-buruz	223	eu	3	Niri buruz	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	Niri buruz |  Aitama - Haur Loaren Espezialista	28	Aitana naiz, haur loaren aholkulari ziurtagiria. Ezagutu nire esperientzia, prestakuntza eta ikuspegi errespetuzkoa zure familia hobeto atsedentzeko laguntzeko.
inicio	226	es	2	Inicio	Juntas podemos hacer grandes cambios. Piensa, ¿Cúal quieres que sea nuestro primer objetivo?	\N	\N	Aitama Sleep Coaching | Asesoría del Sueño Infantil Personalizada	28	Ayudo a familias a conseguir noches tranquilas con métodos respetuosos. Asesoría del sueño infantil personalizada, sin llanto. Mejora el descanso de tu bebé hoy.
sarrera	227	eu	2	Sarrera	Elkarrekin aldaketa handiak egin ditzakegu. Pentsa, zein nahi duzu gure lehen helburua izatea?	\N	\N	Aitama Sleep Coaching | Lo Haur Infantilaren Aholkularitza Pertsonalizatua	28	Familiei gau lasaiak lortzen laguntzen diet metodo errespetuzkoekin. Lo haur infantilaren aholkularitza pertsonalizatua, negarrik gabe. Hobetu zure hauraren atsedena gaur.
servicios	228	es	4	Services	Quiero ofrecerte algo que realmente se adapte a tus necesidades.	Cada programa esta diseñado para cubrir unas necesidades diferentes, dependiendo de la edad, situación u objetivos podrás elegir el que mejor se adapte.	He creado unos programas, pero si ninguno se adapta a lo que te gustaría o te falta información, escríbeme y lo hablamos.	Servicios de Asesoría del Sueño | Aitama Sleep Coaching	28	Planes personalizados de asesoría del sueño: consultas online y seguimiento continuo. Elige el plan ideal para tu familia.
zerbitzuak	229	eu	4	Zerbitzuak	Zure beharretara benetan egokitzen den zerbait eskaini nahi dizut. 	Programa bakoitza behar desberdinak betetzeko diseinatuta dago, adinaren, egoeraren edo helburuen arabera, eta hobekien egokitzen dena aukeratu ahal izango duzu.	Programa batzuk sortu ditut, baina bat bera ere ez bada egokitzen gustatuko litzaizukeenera edo informazioa falta bazaizu, idatz iezadazu eta hitz egingo dugu.	Haur Loaren Aholkularitza Zerbitzuak | Aitama Sleep Coaching	28	Aholkularitza plan pertsonalizatuak: online kontsultak, jarraipena eta errutina osasuntsuak ezartzeko laguntza. Aukeratu zure familiarentzat plan egokia.
\.


--
-- Data for Name: pages_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_rels (id, "order", parent_id, path, pages_id) FROM stdin;
1	\N	1	hero.links.0.link.reference	1
170	\N	3	hero.links.0.link.reference	3
172	\N	2	hero.links.0.link.reference	2
119	\N	2	layout.4.link.reference	2
173	\N	4	hero.links.0.link.reference	3
46	\N	2	layout.3.link.reference	2
\.


--
-- Data for Name: payload_kv; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_kv (id, key, data) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_locked_documents (id, global_slug, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_locked_documents_rels (id, "order", parent_id, path, users_id, media_id, pages_id) FROM stdin;
\.


--
-- Data for Name: payload_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_migrations (id, name, batch, updated_at, created_at) FROM stdin;
1	dev	-1	2026-01-19 09:43:26.925+01	2026-01-15 12:22:05.737+01
\.


--
-- Data for Name: payload_preferences; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_preferences (id, key, value, updated_at, created_at) FROM stdin;
1	collection-pages	{"editViewType": "default"}	2026-01-15 12:59:31.262+01	2026-01-15 12:59:25.215+01
18	collection-users	{"editViewType": "default"}	2026-01-16 20:30:55.337+01	2026-01-16 20:30:54.035+01
15	collection-pages	{"limit": 10, "editViewType": "default"}	2026-01-17 12:23:49.51+01	2026-01-16 18:41:40.637+01
3	collection-pages-1	{"fields": {"hero.links": {"collapsed": ["6969230d7bb18757881c7726"]}}}	2026-01-15 18:26:05.331+01	2026-01-15 18:24:22.577+01
4	global-header	{"fields": {"navItems": {"collapsed": []}, "navItems.0.navLinks": {"collapsed": []}}, "editViewType": "default"}	2026-01-15 18:37:49.276+01	2026-01-15 18:37:34.759+01
5	nav	{"open": true}	2026-01-15 18:41:59.234+01	2026-01-15 18:41:58.676+01
6	global-footer	{"editViewType": "default"}	2026-01-15 18:42:38.186+01	2026-01-15 18:42:38.187+01
2	collection-media	{"limit": 10, "columns": [{"active": true, "accessor": "filename"}, {"active": false, "accessor": "alt"}, {"active": true, "accessor": "unpicUrl"}, {"active": true, "accessor": "updatedAt"}, {"active": false, "accessor": "id"}, {"active": false, "accessor": "createdAt"}, {"active": false, "accessor": "url"}, {"active": false, "accessor": "thumbnailURL"}, {"active": false, "accessor": "mimeType"}, {"active": false, "accessor": "filesize"}, {"active": false, "accessor": "width"}, {"active": false, "accessor": "height"}], "editViewType": "default"}	2026-01-15 21:43:45.231+01	2026-01-15 13:32:36.417+01
19	collection-pages-3	{"fields": {"layout": {"collapsed": []}, "_index-0": {"tabIndex": 1}, "_index-1": {"tabIndex": 1}, "hero.links": {"collapsed": []}}}	2026-01-17 20:24:39.679+01	2026-01-17 11:32:19.569+01
21	collection-pages-4	{"fields": {"layout": {"collapsed": ["696b825f6af15f6661f81efa", "696b82866af15f6661f81efc", "696b83976af15f6661f81f08", "696b929e90bd23d88f628519", "696b966404f2573779325246", "696b83f56af15f6661f81f0a", "696b933590bd23d88f62851b", "696b979904f2573779325248", "696b98a804f257377932524a", "696b936190bd23d88f62851d", "696b84676af15f6661f81f0e", "696b939e90bd23d88f62851f", "696b84a76af15f6661f81f10"]}, "_index-0": {"tabIndex": 1}, "_index-1": {"tabIndex": 1}, "hero.links": {"collapsed": []}}}	2026-01-17 20:25:31.755+01	2026-01-17 13:36:12.859+01
23	collection-pages-5	{"fields": {"layout": {"collapsed": []}, "_index-0": {"tabIndex": 1}, "_index-1": {"tabIndex": 1}}}	2026-01-17 20:27:44.599+01	2026-01-17 18:14:28.795+01
20	locale	"es"	2026-01-17 21:54:04.518+01	2026-01-17 11:43:04.786+01
16	collection-pages-2	{"fields": {"layout": {"collapsed": ["696952f1888cd85a74058c84", "696a7df5333a3f60a45f5ea4", "6969542a888cd85a74058c86", "696958d8692dd42525b58222", "69695ada692dd42525b58230", "69695bb4692dd42525b58232", "69695cb84068806204c29c11", "69695e7e4068806204c29c19"]}, "_index-0": {"tabIndex": 0}, "_index-1": {"tabIndex": 2}, "hero.links": {"collapsed": []}, "_index-0-0-1": {"tabIndex": 1}, "layout.3.services": {"collapsed": []}}}	2026-01-17 22:03:00.918+01	2026-01-16 18:41:45.138+01
8	locale	"es"	2026-01-16 10:54:54.331+01	2026-01-15 23:10:32.825+01
10	collection-pages	{"limit": 10, "editViewType": "default"}	2026-01-17 11:27:00.049+01	2026-01-16 13:19:37.937+01
7	collection-pages-2	{"fields": {"layout": {"collapsed": ["696958d8692dd42525b58222", "69695bb4692dd42525b58232", "69695cb84068806204c29c11", "69695e7e4068806204c29c19"]}, "_index-1": {"tabIndex": 1}, "hero.links": {"collapsed": []}}}	2026-01-16 11:53:25.308+01	2026-01-15 19:04:19.921+01
9	collection-users	{"editViewType": "default"}	2026-01-16 13:10:50.717+01	2026-01-16 13:10:48.609+01
12	locale	"es"	2026-01-19 10:26:10.872+01	2026-01-16 13:26:54.847+01
25	collection-pages-5	{"fields": {"_index-0": {"tabIndex": 0}}}	2026-01-19 10:26:47.637+01	2026-01-19 10:20:19.945+01
24	collection-pages-3	{"fields": {"_index-0": {"tabIndex": 0}}}	2026-01-19 10:27:11.179+01	2026-01-19 10:18:39.334+01
22	collection-pages-4	{"fields": {"layout": {"collapsed": ["696b825f6af15f6661f81efa", "696b82866af15f6661f81efc", "696b83976af15f6661f81f08", "696b929e90bd23d88f628519", "696b966404f2573779325246", "696b83f56af15f6661f81f0a", "696b933590bd23d88f62851b", "696b979904f2573779325248", "696b84376af15f6661f81f0c", "696b936190bd23d88f62851d", "696b98a804f257377932524a", "696b84676af15f6661f81f0e", "696b939e90bd23d88f62851f", "696bc14f8ca202ca715c5ff2", "696b84a76af15f6661f81f10", "696bc0d08ca202ca715c5ff0"]}, "_index-0": {"tabIndex": 0}, "_index-1": {"tabIndex": 0}, "hero.links": {"collapsed": []}}}	2026-01-19 10:27:29.505+01	2026-01-17 17:49:14.209+01
11	collection-users	{"limit": 10, "editViewType": "default"}	2026-01-16 13:21:41.359+01	2026-01-16 13:20:39.941+01
13	collection-pages-2	{"fields": {"layout": {"collapsed": []}, "_index-0": {"tabIndex": 0}, "_index-1": {"tabIndex": 1}, "hero.links": {"collapsed": []}}}	2026-01-19 10:27:51.732+01	2026-01-16 13:40:21.202+01
14	collection-media	{}	2026-01-16 18:33:10.224+01	2026-01-16 18:33:10.224+01
17	collection-media	{"editViewType": "default"}	2026-01-17 12:55:40.921+01	2026-01-16 19:06:12.598+01
\.


--
-- Data for Name: payload_preferences_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_preferences_rels (id, "order", parent_id, path, users_id) FROM stdin;
51	\N	11	user	2
55	\N	14	user	2
392	\N	12	user	2
393	\N	25	user	2
394	\N	24	user	2
395	\N	22	user	2
396	\N	13	user	2
186	\N	17	user	3
74	\N	18	user	3
132	\N	15	user	3
375	\N	19	user	3
376	\N	21	user	3
107	\N	10	user	2
377	\N	23	user	3
379	\N	20	user	3
381	\N	16	user	3
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, updated_at, created_at, email, reset_password_token, reset_password_expiration, salt, hash, login_attempts, lock_until, name) FROM stdin;
3	2026-01-17 11:30:32.458+01	2026-01-16 13:24:51.801+01	josebaquerejetawork@gmail.com	\N	\N	392e4cb4331aad41b85627fdea9777ff37dd88416abe11233f86e8b50ac2d83b	ad54ea2b1fdc1f2152f1c104f4db12f6a7eda86484496744a341dc728815e9f73a1d605400caa2b58d105a5255e9d3b079639b2010e6a27f18942c553b6c0e62718babb2a8ff905399a662cdd6fb3899c48423afcc65a7795ae3d424d010e44d32e8cabf14b5323ea19423afac1b477fee8774d1c393b9854c0673484021334d7cc5f8b44f401532ab343a484a94aafe834d7d85f2756268b35355be2072ee6abc95b1e09e1f46c490493ff11f3065da71133d61111727a297b95675cfb9bd0dc32a5c17957083f88221ee31c276a789c9db108719925a3e05b57e3dbbac11e1ce46d5c947a497f12fb06c7680a93aa7bf35a3f4daac2c746d874e59ad39008202f0a5b3c87404887fbab19685572aa473844dea69ecd9cb64fdae81b238b7a30e7d9a7ad1ac934eb282268bef29dd829d9693e626fa54058aa6ab6ad9dd3f2bdb090e52e5355c45407858955a747f55cb1aac49dc5e7636f6dff3c810c0a09a1f612b03013bb6b58f8e1c41a9e2ce12f2949211b660a1622831d8c84985aae0bf7652437733075436adedc72b4b8c99a6580c3fc2a5997c49bcbb5f60486b493f2a36fa43f26d7139b34994ad4d6bc9447e13fc02e6d85920d80f13afec795f6359d009c393a6f866324da326c5587a1439cedd9f2215d82fcfb6cac66ead6f3a4c355aab6d21a608da3cc55ff026528bfb31d683020cb9d829a279cef01505	0	\N	Admin
2	2026-01-16 13:19:35.409+01	2026-01-16 13:19:35.409+01	alazneemail07@gmail.com	\N	\N	0a305655e14e7b13e6bfbee318e43605b67a5b6e70a30c008b365284ae3f056f	f553fcc63429f6312980651a0abbb37d677ba7ff7d787d24a1c0ca81a07fce9f4230385710147658088898d809d472290d25e787ca0d05e2f7655f8e6e20ddfe6bab6593e2148d56612764e896d2a7ba9f0b4b0e115b2269864de54e24f37097ef41de13f0a021912237c0e168207a6835df1d1daac23ec4d34c5c38427784ea8da7425a8a5252b20324b69b82ad2b0b6a0eda7f990b9f2d2cf4cfcef7e0d22550f3331fa709ab8e88ec6e1e416513df6e85fcc128bdb506171e598c9d9ded0216629265a5b426fb1bd505348d79ed54432754e445b8c1e0e5acb06b953736124fd0083f0c5885a53129b30977364cc58a179982fc4ebef76dace242f260594869f7082d921646b0ab4bfb7841def0d6d9ad5ce5212a0e402fc13d1a0e958aebc10eb74fc2e9217a2d5ac0b3d19b5abf0e9285a05b62d1b692371835bf561941c9d21ec60a8ee8f66ae6177c02db65bd159f6c9964ae5938544937e3bf08a03c1a73e6b7b3d67895aec3e11268944b620fb5005ab40b0e5ff4c88a9c3700bd6acbaecc82d12568c1a9dfc75b0a6984efa536d1c2c8b53f4000c8ec82755e691bea95a107eb92ee30bfdf10fc455782979996200354e815d5d13df05e8354cc2da96bf5be4750fb171bffd24813c35a111bd37925761bd58b4708a1c1b64bbd428875348f6d8f69e14eaedb1bea2f761b0b4bb90af48ff380eb996d51c87d8c9b	0	\N	Alazne
\.


--
-- Data for Name: users_roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users_roles ("order", parent_id, value, id) FROM stdin;
1	3	admin	24
1	2	user	27
\.


--
-- Data for Name: users_sessions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users_sessions (_order, _parent_id, id, created_at, expires_at) FROM stdin;
1	3	ecfbd65e-6b28-4566-ad13-5ef52a2ff93f	2026-01-17 18:13:13.865+01	2026-01-17 22:12:30.628+01
1	2	2c4070c8-1f40-4693-b251-db04a94adf75	2026-01-19 10:18:12.843+01	2026-01-19 12:18:12.843+01
\.


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_id_seq', 1676, true);


--
-- Name: _pages_v_blocks_content_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_locales_id_seq', 2422, true);


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_media_block_id_seq', 611, true);


--
-- Name: _pages_v_blocks_opinion_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_opinion_block_id_seq', 229, true);


--
-- Name: _pages_v_blocks_opinion_block_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_opinion_block_locales_id_seq', 101, true);


--
-- Name: _pages_v_blocks_opinion_block_opinions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_opinion_block_opinions_id_seq', 659, true);


--
-- Name: _pages_v_blocks_opinion_block_opinions_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_opinion_block_opinions_locales_id_seq', 253, true);


--
-- Name: _pages_v_blocks_price_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_price_block_id_seq', 269, true);


--
-- Name: _pages_v_blocks_sentence_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_sentence_id_seq', 291, true);


--
-- Name: _pages_v_blocks_sentence_sentences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_sentence_sentences_id_seq', 1147, true);


--
-- Name: _pages_v_blocks_sentence_sentences_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_sentence_sentences_locales_id_seq', 677, true);


--
-- Name: _pages_v_blocks_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_services_id_seq', 488, true);


--
-- Name: _pages_v_blocks_services_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_services_services_id_seq', 2569, true);


--
-- Name: _pages_v_blocks_services_services_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_blocks_services_services_locales_id_seq', 2107, true);


--
-- Name: _pages_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_id_seq', 217, true);


--
-- Name: _pages_v_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_locales_id_seq', 975, true);


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_rels_id_seq', 778, true);


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_version_hero_links_id_seq', 556, true);


--
-- Name: _pages_v_version_hero_links_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._pages_v_version_hero_links_locales_id_seq', 442, true);


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.media_id_seq', 28, true);


--
-- Name: pages_blocks_content_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_content_locales_id_seq', 709, true);


--
-- Name: pages_blocks_opinion_block_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_opinion_block_locales_id_seq', 19, true);


--
-- Name: pages_blocks_opinion_block_opinions_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_opinion_block_opinions_locales_id_seq', 57, true);


--
-- Name: pages_blocks_sentence_sentences_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_sentence_sentences_locales_id_seq', 144, true);


--
-- Name: pages_blocks_services_services_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_services_services_locales_id_seq', 574, true);


--
-- Name: pages_hero_links_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_hero_links_locales_id_seq', 111, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_id_seq', 5, true);


--
-- Name: pages_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_locales_id_seq', 229, true);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_rels_id_seq', 173, true);


--
-- Name: payload_kv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_kv_id_seq', 1, false);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_id_seq', 519, true);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_rels_id_seq', 1037, true);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_migrations_id_seq', 1, true);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_id_seq', 25, true);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_rels_id_seq', 396, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_roles_id_seq', 27, true);


--
-- Name: _pages_v_blocks_content_locales _pages_v_blocks_content_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content_locales
    ADD CONSTRAINT _pages_v_blocks_content_locales_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content
    ADD CONSTRAINT _pages_v_blocks_content_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_opinion_block_locales _pages_v_blocks_opinion_block_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_opinion_block_locales
    ADD CONSTRAINT _pages_v_blocks_opinion_block_locales_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_opinion_block_opinions_locales _pages_v_blocks_opinion_block_opinions_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_opinion_block_opinions_locales
    ADD CONSTRAINT _pages_v_blocks_opinion_block_opinions_locales_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_opinion_block_opinions _pages_v_blocks_opinion_block_opinions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_opinion_block_opinions
    ADD CONSTRAINT _pages_v_blocks_opinion_block_opinions_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_opinion_block _pages_v_blocks_opinion_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_opinion_block
    ADD CONSTRAINT _pages_v_blocks_opinion_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_price_block _pages_v_blocks_price_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_price_block
    ADD CONSTRAINT _pages_v_blocks_price_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_sentence _pages_v_blocks_sentence_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_sentence
    ADD CONSTRAINT _pages_v_blocks_sentence_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_sentence_sentences_locales _pages_v_blocks_sentence_sentences_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_sentence_sentences_locales
    ADD CONSTRAINT _pages_v_blocks_sentence_sentences_locales_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_sentence_sentences _pages_v_blocks_sentence_sentences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_sentence_sentences
    ADD CONSTRAINT _pages_v_blocks_sentence_sentences_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_services _pages_v_blocks_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_services
    ADD CONSTRAINT _pages_v_blocks_services_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_services_services_locales _pages_v_blocks_services_services_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_services_services_locales
    ADD CONSTRAINT _pages_v_blocks_services_services_locales_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_services_services _pages_v_blocks_services_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_services_services
    ADD CONSTRAINT _pages_v_blocks_services_services_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_locales _pages_v_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_locales
    ADD CONSTRAINT _pages_v_locales_pkey PRIMARY KEY (id);


--
-- Name: _pages_v _pages_v_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_rels _pages_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_version_hero_links_locales _pages_v_version_hero_links_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_links_locales
    ADD CONSTRAINT _pages_v_version_hero_links_locales_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_links
    ADD CONSTRAINT _pages_v_version_hero_links_pkey PRIMARY KEY (id);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content_locales pages_blocks_content_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_locales
    ADD CONSTRAINT pages_blocks_content_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content pages_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content
    ADD CONSTRAINT pages_blocks_content_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_media_block pages_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_opinion_block_locales pages_blocks_opinion_block_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_opinion_block_locales
    ADD CONSTRAINT pages_blocks_opinion_block_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_opinion_block_opinions_locales pages_blocks_opinion_block_opinions_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_opinion_block_opinions_locales
    ADD CONSTRAINT pages_blocks_opinion_block_opinions_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_opinion_block_opinions pages_blocks_opinion_block_opinions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_opinion_block_opinions
    ADD CONSTRAINT pages_blocks_opinion_block_opinions_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_opinion_block pages_blocks_opinion_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_opinion_block
    ADD CONSTRAINT pages_blocks_opinion_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_price_block pages_blocks_price_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_price_block
    ADD CONSTRAINT pages_blocks_price_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_sentence pages_blocks_sentence_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_sentence
    ADD CONSTRAINT pages_blocks_sentence_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_sentence_sentences_locales pages_blocks_sentence_sentences_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_sentence_sentences_locales
    ADD CONSTRAINT pages_blocks_sentence_sentences_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_sentence_sentences pages_blocks_sentence_sentences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_sentence_sentences
    ADD CONSTRAINT pages_blocks_sentence_sentences_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_services pages_blocks_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services
    ADD CONSTRAINT pages_blocks_services_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_services_services_locales pages_blocks_services_services_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services_services_locales
    ADD CONSTRAINT pages_blocks_services_services_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_services_services pages_blocks_services_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services_services
    ADD CONSTRAINT pages_blocks_services_services_pkey PRIMARY KEY (id);


--
-- Name: pages_hero_links_locales pages_hero_links_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_hero_links_locales
    ADD CONSTRAINT pages_hero_links_locales_pkey PRIMARY KEY (id);


--
-- Name: pages_hero_links pages_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_hero_links
    ADD CONSTRAINT pages_hero_links_pkey PRIMARY KEY (id);


--
-- Name: pages_locales pages_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_locales
    ADD CONSTRAINT pages_locales_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages_rels pages_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_kv payload_kv_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_kv
    ADD CONSTRAINT payload_kv_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents payload_locked_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents
    ADD CONSTRAINT payload_locked_documents_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_migrations payload_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_migrations
    ADD CONSTRAINT payload_migrations_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences payload_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences
    ADD CONSTRAINT payload_preferences_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences_rels payload_preferences_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users_roles users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT users_roles_pkey PRIMARY KEY (id);


--
-- Name: users_sessions users_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_sessions
    ADD CONSTRAINT users_sessions_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_autosave_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_autosave_idx ON public._pages_v USING btree (autosave);


--
-- Name: _pages_v_blocks_content_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX _pages_v_blocks_content_locales_locale_parent_id_unique ON public._pages_v_blocks_content_locales USING btree (_locale, _parent_id);


--
-- Name: _pages_v_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_content_order_idx ON public._pages_v_blocks_content USING btree (_order);


--
-- Name: _pages_v_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_content_parent_id_idx ON public._pages_v_blocks_content USING btree (_parent_id);


--
-- Name: _pages_v_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_content_path_idx ON public._pages_v_blocks_content USING btree (_path);


--
-- Name: _pages_v_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_media_block_media_idx ON public._pages_v_blocks_media_block USING btree (media_id);


--
-- Name: _pages_v_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_media_block_order_idx ON public._pages_v_blocks_media_block USING btree (_order);


--
-- Name: _pages_v_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_media_block_parent_id_idx ON public._pages_v_blocks_media_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_media_block_path_idx ON public._pages_v_blocks_media_block USING btree (_path);


--
-- Name: _pages_v_blocks_opinion_block_locales_locale_parent_id_uniqu; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX _pages_v_blocks_opinion_block_locales_locale_parent_id_uniqu ON public._pages_v_blocks_opinion_block_locales USING btree (_locale, _parent_id);


--
-- Name: _pages_v_blocks_opinion_block_opinions_locales_locale_parent; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX _pages_v_blocks_opinion_block_opinions_locales_locale_parent ON public._pages_v_blocks_opinion_block_opinions_locales USING btree (_locale, _parent_id);


--
-- Name: _pages_v_blocks_opinion_block_opinions_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_opinion_block_opinions_media_idx ON public._pages_v_blocks_opinion_block_opinions USING btree (media_id);


--
-- Name: _pages_v_blocks_opinion_block_opinions_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_opinion_block_opinions_order_idx ON public._pages_v_blocks_opinion_block_opinions USING btree (_order);


--
-- Name: _pages_v_blocks_opinion_block_opinions_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_opinion_block_opinions_parent_id_idx ON public._pages_v_blocks_opinion_block_opinions USING btree (_parent_id);


--
-- Name: _pages_v_blocks_opinion_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_opinion_block_order_idx ON public._pages_v_blocks_opinion_block USING btree (_order);


--
-- Name: _pages_v_blocks_opinion_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_opinion_block_parent_id_idx ON public._pages_v_blocks_opinion_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_opinion_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_opinion_block_path_idx ON public._pages_v_blocks_opinion_block USING btree (_path);


--
-- Name: _pages_v_blocks_price_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_price_block_order_idx ON public._pages_v_blocks_price_block USING btree (_order);


--
-- Name: _pages_v_blocks_price_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_price_block_parent_id_idx ON public._pages_v_blocks_price_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_price_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_price_block_path_idx ON public._pages_v_blocks_price_block USING btree (_path);


--
-- Name: _pages_v_blocks_sentence_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_sentence_order_idx ON public._pages_v_blocks_sentence USING btree (_order);


--
-- Name: _pages_v_blocks_sentence_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_sentence_parent_id_idx ON public._pages_v_blocks_sentence USING btree (_parent_id);


--
-- Name: _pages_v_blocks_sentence_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_sentence_path_idx ON public._pages_v_blocks_sentence USING btree (_path);


--
-- Name: _pages_v_blocks_sentence_sentences_locales_locale_parent_id_; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX _pages_v_blocks_sentence_sentences_locales_locale_parent_id_ ON public._pages_v_blocks_sentence_sentences_locales USING btree (_locale, _parent_id);


--
-- Name: _pages_v_blocks_sentence_sentences_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_sentence_sentences_order_idx ON public._pages_v_blocks_sentence_sentences USING btree (_order);


--
-- Name: _pages_v_blocks_sentence_sentences_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_sentence_sentences_parent_id_idx ON public._pages_v_blocks_sentence_sentences USING btree (_parent_id);


--
-- Name: _pages_v_blocks_services_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_services_order_idx ON public._pages_v_blocks_services USING btree (_order);


--
-- Name: _pages_v_blocks_services_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_services_parent_id_idx ON public._pages_v_blocks_services USING btree (_parent_id);


--
-- Name: _pages_v_blocks_services_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_services_path_idx ON public._pages_v_blocks_services USING btree (_path);


--
-- Name: _pages_v_blocks_services_services_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_services_services_image_idx ON public._pages_v_blocks_services_services USING btree (image_id);


--
-- Name: _pages_v_blocks_services_services_locales_locale_parent_id_u; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX _pages_v_blocks_services_services_locales_locale_parent_id_u ON public._pages_v_blocks_services_services_locales USING btree (_locale, _parent_id);


--
-- Name: _pages_v_blocks_services_services_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_services_services_order_idx ON public._pages_v_blocks_services_services USING btree (_order);


--
-- Name: _pages_v_blocks_services_services_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_blocks_services_services_parent_id_idx ON public._pages_v_blocks_services_services USING btree (_parent_id);


--
-- Name: _pages_v_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_created_at_idx ON public._pages_v USING btree (created_at);


--
-- Name: _pages_v_latest_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_latest_idx ON public._pages_v USING btree (latest);


--
-- Name: _pages_v_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX _pages_v_locales_locale_parent_id_unique ON public._pages_v_locales USING btree (_locale, _parent_id);


--
-- Name: _pages_v_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_parent_idx ON public._pages_v USING btree (parent_id);


--
-- Name: _pages_v_published_locale_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_published_locale_idx ON public._pages_v USING btree (published_locale);


--
-- Name: _pages_v_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_order_idx ON public._pages_v_rels USING btree ("order");


--
-- Name: _pages_v_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_pages_id_idx ON public._pages_v_rels USING btree (pages_id);


--
-- Name: _pages_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_parent_idx ON public._pages_v_rels USING btree (parent_id);


--
-- Name: _pages_v_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_rels_path_idx ON public._pages_v_rels USING btree (path);


--
-- Name: _pages_v_snapshot_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_snapshot_idx ON public._pages_v USING btree (snapshot);


--
-- Name: _pages_v_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_updated_at_idx ON public._pages_v USING btree (updated_at);


--
-- Name: _pages_v_version_hero_links_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX _pages_v_version_hero_links_locales_locale_parent_id_unique ON public._pages_v_version_hero_links_locales USING btree (_locale, _parent_id);


--
-- Name: _pages_v_version_hero_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_hero_links_order_idx ON public._pages_v_version_hero_links USING btree (_order);


--
-- Name: _pages_v_version_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_hero_links_parent_id_idx ON public._pages_v_version_hero_links USING btree (_parent_id);


--
-- Name: _pages_v_version_hero_version_hero_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_hero_version_hero_media_idx ON public._pages_v USING btree (version_hero_media_id);


--
-- Name: _pages_v_version_meta_version_meta_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_meta_version_meta_image_idx ON public._pages_v_locales USING btree (version_meta_image_id, _locale);


--
-- Name: _pages_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_version__status_idx ON public._pages_v USING btree (version__status);


--
-- Name: _pages_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_version_created_at_idx ON public._pages_v USING btree (version_created_at);


--
-- Name: _pages_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_version_slug_idx ON public._pages_v_locales USING btree (version_slug, _locale);


--
-- Name: _pages_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX _pages_v_version_version_updated_at_idx ON public._pages_v USING btree (version_updated_at);


--
-- Name: media_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_created_at_idx ON public.media USING btree (created_at);


--
-- Name: media_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX media_filename_idx ON public.media USING btree (filename);


--
-- Name: media_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_updated_at_idx ON public.media USING btree (updated_at);


--
-- Name: pages__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages__status_idx ON public.pages USING btree (_status);


--
-- Name: pages_blocks_content_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_content_locales_locale_parent_id_unique ON public.pages_blocks_content_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_order_idx ON public.pages_blocks_content USING btree (_order);


--
-- Name: pages_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_parent_id_idx ON public.pages_blocks_content USING btree (_parent_id);


--
-- Name: pages_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_content_path_idx ON public.pages_blocks_content USING btree (_path);


--
-- Name: pages_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_block_media_idx ON public.pages_blocks_media_block USING btree (media_id);


--
-- Name: pages_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_block_order_idx ON public.pages_blocks_media_block USING btree (_order);


--
-- Name: pages_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_block_parent_id_idx ON public.pages_blocks_media_block USING btree (_parent_id);


--
-- Name: pages_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_media_block_path_idx ON public.pages_blocks_media_block USING btree (_path);


--
-- Name: pages_blocks_opinion_block_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_opinion_block_locales_locale_parent_id_unique ON public.pages_blocks_opinion_block_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_opinion_block_opinions_locales_locale_parent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_opinion_block_opinions_locales_locale_parent_id ON public.pages_blocks_opinion_block_opinions_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_opinion_block_opinions_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_opinion_block_opinions_media_idx ON public.pages_blocks_opinion_block_opinions USING btree (media_id);


--
-- Name: pages_blocks_opinion_block_opinions_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_opinion_block_opinions_order_idx ON public.pages_blocks_opinion_block_opinions USING btree (_order);


--
-- Name: pages_blocks_opinion_block_opinions_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_opinion_block_opinions_parent_id_idx ON public.pages_blocks_opinion_block_opinions USING btree (_parent_id);


--
-- Name: pages_blocks_opinion_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_opinion_block_order_idx ON public.pages_blocks_opinion_block USING btree (_order);


--
-- Name: pages_blocks_opinion_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_opinion_block_parent_id_idx ON public.pages_blocks_opinion_block USING btree (_parent_id);


--
-- Name: pages_blocks_opinion_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_opinion_block_path_idx ON public.pages_blocks_opinion_block USING btree (_path);


--
-- Name: pages_blocks_price_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_price_block_order_idx ON public.pages_blocks_price_block USING btree (_order);


--
-- Name: pages_blocks_price_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_price_block_parent_id_idx ON public.pages_blocks_price_block USING btree (_parent_id);


--
-- Name: pages_blocks_price_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_price_block_path_idx ON public.pages_blocks_price_block USING btree (_path);


--
-- Name: pages_blocks_sentence_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_sentence_order_idx ON public.pages_blocks_sentence USING btree (_order);


--
-- Name: pages_blocks_sentence_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_sentence_parent_id_idx ON public.pages_blocks_sentence USING btree (_parent_id);


--
-- Name: pages_blocks_sentence_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_sentence_path_idx ON public.pages_blocks_sentence USING btree (_path);


--
-- Name: pages_blocks_sentence_sentences_locales_locale_parent_id_uni; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_sentence_sentences_locales_locale_parent_id_uni ON public.pages_blocks_sentence_sentences_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_sentence_sentences_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_sentence_sentences_order_idx ON public.pages_blocks_sentence_sentences USING btree (_order);


--
-- Name: pages_blocks_sentence_sentences_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_sentence_sentences_parent_id_idx ON public.pages_blocks_sentence_sentences USING btree (_parent_id);


--
-- Name: pages_blocks_services_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_services_order_idx ON public.pages_blocks_services USING btree (_order);


--
-- Name: pages_blocks_services_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_services_parent_id_idx ON public.pages_blocks_services USING btree (_parent_id);


--
-- Name: pages_blocks_services_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_services_path_idx ON public.pages_blocks_services USING btree (_path);


--
-- Name: pages_blocks_services_services_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_services_services_image_idx ON public.pages_blocks_services_services USING btree (image_id);


--
-- Name: pages_blocks_services_services_locales_locale_parent_id_uniq; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_blocks_services_services_locales_locale_parent_id_uniq ON public.pages_blocks_services_services_locales USING btree (_locale, _parent_id);


--
-- Name: pages_blocks_services_services_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_services_services_order_idx ON public.pages_blocks_services_services USING btree (_order);


--
-- Name: pages_blocks_services_services_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_services_services_parent_id_idx ON public.pages_blocks_services_services USING btree (_parent_id);


--
-- Name: pages_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_created_at_idx ON public.pages USING btree (created_at);


--
-- Name: pages_hero_hero_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_hero_hero_media_idx ON public.pages USING btree (hero_media_id);


--
-- Name: pages_hero_links_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_hero_links_locales_locale_parent_id_unique ON public.pages_hero_links_locales USING btree (_locale, _parent_id);


--
-- Name: pages_hero_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_hero_links_order_idx ON public.pages_hero_links USING btree (_order);


--
-- Name: pages_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_hero_links_parent_id_idx ON public.pages_hero_links USING btree (_parent_id);


--
-- Name: pages_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_locales_locale_parent_id_unique ON public.pages_locales USING btree (_locale, _parent_id);


--
-- Name: pages_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_meta_meta_image_idx ON public.pages_locales USING btree (meta_image_id, _locale);


--
-- Name: pages_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_order_idx ON public.pages_rels USING btree ("order");


--
-- Name: pages_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_pages_id_idx ON public.pages_rels USING btree (pages_id);


--
-- Name: pages_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_parent_idx ON public.pages_rels USING btree (parent_id);


--
-- Name: pages_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_rels_path_idx ON public.pages_rels USING btree (path);


--
-- Name: pages_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_slug_idx ON public.pages_locales USING btree (slug, _locale);


--
-- Name: pages_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_updated_at_idx ON public.pages USING btree (updated_at);


--
-- Name: payload_kv_key_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX payload_kv_key_idx ON public.payload_kv USING btree (key);


--
-- Name: payload_locked_documents_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_created_at_idx ON public.payload_locked_documents USING btree (created_at);


--
-- Name: payload_locked_documents_global_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_global_slug_idx ON public.payload_locked_documents USING btree (global_slug);


--
-- Name: payload_locked_documents_rels_media_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_media_id_idx ON public.payload_locked_documents_rels USING btree (media_id);


--
-- Name: payload_locked_documents_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_order_idx ON public.payload_locked_documents_rels USING btree ("order");


--
-- Name: payload_locked_documents_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_pages_id_idx ON public.payload_locked_documents_rels USING btree (pages_id);


--
-- Name: payload_locked_documents_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_parent_idx ON public.payload_locked_documents_rels USING btree (parent_id);


--
-- Name: payload_locked_documents_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_path_idx ON public.payload_locked_documents_rels USING btree (path);


--
-- Name: payload_locked_documents_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_users_id_idx ON public.payload_locked_documents_rels USING btree (users_id);


--
-- Name: payload_locked_documents_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_updated_at_idx ON public.payload_locked_documents USING btree (updated_at);


--
-- Name: payload_migrations_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_migrations_created_at_idx ON public.payload_migrations USING btree (created_at);


--
-- Name: payload_migrations_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_migrations_updated_at_idx ON public.payload_migrations USING btree (updated_at);


--
-- Name: payload_preferences_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_created_at_idx ON public.payload_preferences USING btree (created_at);


--
-- Name: payload_preferences_key_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_key_idx ON public.payload_preferences USING btree (key);


--
-- Name: payload_preferences_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_order_idx ON public.payload_preferences_rels USING btree ("order");


--
-- Name: payload_preferences_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_parent_idx ON public.payload_preferences_rels USING btree (parent_id);


--
-- Name: payload_preferences_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_path_idx ON public.payload_preferences_rels USING btree (path);


--
-- Name: payload_preferences_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_users_id_idx ON public.payload_preferences_rels USING btree (users_id);


--
-- Name: payload_preferences_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_updated_at_idx ON public.payload_preferences USING btree (updated_at);


--
-- Name: users_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_created_at_idx ON public.users USING btree (created_at);


--
-- Name: users_email_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX users_email_idx ON public.users USING btree (email);


--
-- Name: users_roles_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_roles_order_idx ON public.users_roles USING btree ("order");


--
-- Name: users_roles_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_roles_parent_idx ON public.users_roles USING btree (parent_id);


--
-- Name: users_sessions_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_sessions_order_idx ON public.users_sessions USING btree (_order);


--
-- Name: users_sessions_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_sessions_parent_id_idx ON public.users_sessions USING btree (_parent_id);


--
-- Name: users_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_updated_at_idx ON public.users USING btree (updated_at);


--
-- Name: _pages_v_blocks_content_locales _pages_v_blocks_content_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content_locales
    ADD CONSTRAINT _pages_v_blocks_content_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_content(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_content
    ADD CONSTRAINT _pages_v_blocks_content_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_opinion_block_locales _pages_v_blocks_opinion_block_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_opinion_block_locales
    ADD CONSTRAINT _pages_v_blocks_opinion_block_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_opinion_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_opinion_block_opinions_locales _pages_v_blocks_opinion_block_opinions_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_opinion_block_opinions_locales
    ADD CONSTRAINT _pages_v_blocks_opinion_block_opinions_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_opinion_block_opinions(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_opinion_block_opinions _pages_v_blocks_opinion_block_opinions_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_opinion_block_opinions
    ADD CONSTRAINT _pages_v_blocks_opinion_block_opinions_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_opinion_block_opinions _pages_v_blocks_opinion_block_opinions_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_opinion_block_opinions
    ADD CONSTRAINT _pages_v_blocks_opinion_block_opinions_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_opinion_block(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_opinion_block _pages_v_blocks_opinion_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_opinion_block
    ADD CONSTRAINT _pages_v_blocks_opinion_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_price_block _pages_v_blocks_price_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_price_block
    ADD CONSTRAINT _pages_v_blocks_price_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_sentence _pages_v_blocks_sentence_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_sentence
    ADD CONSTRAINT _pages_v_blocks_sentence_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_sentence_sentences_locales _pages_v_blocks_sentence_sentences_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_sentence_sentences_locales
    ADD CONSTRAINT _pages_v_blocks_sentence_sentences_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_sentence_sentences(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_sentence_sentences _pages_v_blocks_sentence_sentences_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_sentence_sentences
    ADD CONSTRAINT _pages_v_blocks_sentence_sentences_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_sentence(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_services _pages_v_blocks_services_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_services
    ADD CONSTRAINT _pages_v_blocks_services_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_services_services _pages_v_blocks_services_services_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_services_services
    ADD CONSTRAINT _pages_v_blocks_services_services_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_services_services_locales _pages_v_blocks_services_services_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_services_services_locales
    ADD CONSTRAINT _pages_v_blocks_services_services_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_services_services(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_services_services _pages_v_blocks_services_services_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_blocks_services_services
    ADD CONSTRAINT _pages_v_blocks_services_services_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_services(id) ON DELETE CASCADE;


--
-- Name: _pages_v_locales _pages_v_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_locales
    ADD CONSTRAINT _pages_v_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_locales _pages_v_locales_version_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_locales
    ADD CONSTRAINT _pages_v_locales_version_meta_image_id_media_id_fk FOREIGN KEY (version_meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v _pages_v_parent_id_pages_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_parent_id_pages_id_fk FOREIGN KEY (parent_id) REFERENCES public.pages(id) ON DELETE SET NULL;


--
-- Name: _pages_v_rels _pages_v_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_version_hero_links_locales _pages_v_version_hero_links_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_links_locales
    ADD CONSTRAINT _pages_v_version_hero_links_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_version_hero_links(id) ON DELETE CASCADE;


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v_version_hero_links
    ADD CONSTRAINT _pages_v_version_hero_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v _pages_v_version_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_version_hero_media_id_media_id_fk FOREIGN KEY (version_hero_media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_content_locales pages_blocks_content_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content_locales
    ADD CONSTRAINT pages_blocks_content_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_content(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content pages_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_content
    ADD CONSTRAINT pages_blocks_content_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_opinion_block_locales pages_blocks_opinion_block_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_opinion_block_locales
    ADD CONSTRAINT pages_blocks_opinion_block_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_opinion_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_opinion_block_opinions_locales pages_blocks_opinion_block_opinions_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_opinion_block_opinions_locales
    ADD CONSTRAINT pages_blocks_opinion_block_opinions_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_opinion_block_opinions(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_opinion_block_opinions pages_blocks_opinion_block_opinions_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_opinion_block_opinions
    ADD CONSTRAINT pages_blocks_opinion_block_opinions_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_opinion_block_opinions pages_blocks_opinion_block_opinions_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_opinion_block_opinions
    ADD CONSTRAINT pages_blocks_opinion_block_opinions_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_opinion_block(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_opinion_block pages_blocks_opinion_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_opinion_block
    ADD CONSTRAINT pages_blocks_opinion_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_price_block pages_blocks_price_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_price_block
    ADD CONSTRAINT pages_blocks_price_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_sentence pages_blocks_sentence_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_sentence
    ADD CONSTRAINT pages_blocks_sentence_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_sentence_sentences_locales pages_blocks_sentence_sentences_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_sentence_sentences_locales
    ADD CONSTRAINT pages_blocks_sentence_sentences_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_sentence_sentences(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_sentence_sentences pages_blocks_sentence_sentences_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_sentence_sentences
    ADD CONSTRAINT pages_blocks_sentence_sentences_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_sentence(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_services pages_blocks_services_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services
    ADD CONSTRAINT pages_blocks_services_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_services_services pages_blocks_services_services_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services_services
    ADD CONSTRAINT pages_blocks_services_services_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_services_services_locales pages_blocks_services_services_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services_services_locales
    ADD CONSTRAINT pages_blocks_services_services_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_services_services(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_services_services pages_blocks_services_services_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_services_services
    ADD CONSTRAINT pages_blocks_services_services_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_services(id) ON DELETE CASCADE;


--
-- Name: pages_hero_links_locales pages_hero_links_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_hero_links_locales
    ADD CONSTRAINT pages_hero_links_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_hero_links(id) ON DELETE CASCADE;


--
-- Name: pages_hero_links pages_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_hero_links
    ADD CONSTRAINT pages_hero_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages pages_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_hero_media_id_media_id_fk FOREIGN KEY (hero_media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_locales pages_locales_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_locales
    ADD CONSTRAINT pages_locales_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_locales pages_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_locales
    ADD CONSTRAINT pages_locales_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_media_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_locked_documents(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_preferences(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: users_roles users_roles_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT users_roles_parent_fk FOREIGN KEY (parent_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: users_sessions users_sessions_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_sessions
    ADD CONSTRAINT users_sessions_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict eIidnfjOGOYVgPlVdPtbbTbFHGpnjZqm4b1HxEh34Ub7kvoehAjRZ3RH7Lg4n2Y

