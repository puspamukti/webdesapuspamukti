import { createClient } from '@supabase/supabase-js';

const supabaseUrl = import.meta.env.PUBLIC_SUPABASE_URL || 'https://placeholder.supabase.co';
const supabaseAnonKey = import.meta.env.PUBLIC_SUPABASE_ANON_KEY || 'placeholder-anon-key';

if (!import.meta.env.PUBLIC_SUPABASE_URL || !import.meta.env.PUBLIC_SUPABASE_ANON_KEY) {
  console.warn("Supabase credentials are not defined in the environment variables. Using placeholder client for static build.");
}

export const supabase = createClient(supabaseUrl, supabaseAnonKey);
