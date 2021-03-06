SynthDef("LowPassFilter", {
    arg in=SndFloLibrary.silentIn, out=SndFloLibrary.silentOut, freq=4400;
    Out.ar(out, BLowPass.ar(In.ar(in), freq))
},
    metadata: (
        description: "",
        specs: (
            freq: ControlSpec(20, 20000, \exp, 0.1, 2200, "Hz")
        )
    )
)
