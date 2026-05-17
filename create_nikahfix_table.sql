-- Create table nikahfix for wedding guest messages
CREATE TABLE IF NOT EXISTS public.nikahfix (
    id BIGSERIAL PRIMARY KEY,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    name TEXT NOT NULL,
    message TEXT NOT NULL,
    color TEXT DEFAULT 'red'
);

-- Enable Row Level Security (RLS)
ALTER TABLE public.nikahfix ENABLE ROW LEVEL SECURITY;

-- Create policy to allow anyone to read messages
CREATE POLICY "Allow public read access" 
ON public.nikahfix 
FOR SELECT 
TO public 
USING (true);

-- Create policy to allow anyone to insert messages
CREATE POLICY "Allow public insert access" 
ON public.nikahfix 
FOR INSERT 
TO public 
WITH CHECK (true);

-- Create index for better performance
CREATE INDEX IF NOT EXISTS nikahfix_created_at_idx ON public.nikahfix(created_at DESC);

-- Grant permissions
GRANT SELECT, INSERT ON public.nikahfix TO anon;
GRANT SELECT, INSERT ON public.nikahfix TO authenticated;
