import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();
const supabase = createClient(process.env.PUBLIC_SUPABASE_URL, process.env.PUBLIC_SUPABASE_ANON_KEY);
async function test() {
  const { data, error } = await supabase.from('berita').insert([{ judul: 'test', kategori: 'test', tanggal: 'test', status: 'Draft', isi: 'test' }]);
  console.log("Berita Insert Error:", error);
}
test();
