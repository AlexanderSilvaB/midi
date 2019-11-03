package orchestra;

public class Orchestra
{
    public static void main( String[] args )
    {
        if(args.length == 0)
        {
            System.out.println("No valid midi input file");
            return;
        }

        Synth synth = new Synth();
        synth.open();
        
        Midi midi = synth.parse(args[0]);
        System.out.println(midi.toBasicString());
        synth.play(midi);

        synth.close();
    }
}