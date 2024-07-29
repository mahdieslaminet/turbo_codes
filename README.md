# turbo_codes
Understanding turbo codes: A signal processing study
This exposition provides a novel outlook on the remarkable 
capabilities of turbo codes by analyzing them through the lens 
of digital signal processing over the complex field. We elucidate 
the two pivotal elements facilitating the turbo code 
phenomenon – iterative decoding and interleaving across 
parallel concatenated codes. A mathematical framework is 
developed to quantify the decrease in decoded noise power 
with each iteration, contingent upon the interleaver adequately 
decorrelating the noise. Exact analytical expressions 
characterizing the rate of noise power reduction and its limiting 
value are derived. Remarkably, for a rate ½ turbo code, this 
limiting decoded noise power is proven to be unattainable by 
any non-iterative (non-turbo) code of the same rate, 
underscoring the fundamental advantages of the ingenious 
turbo architecture. The criticalrole of the interleaver is also 
examined, providing valuable insights into its design 
considerations.
Turbo codes have attracted tremendous research interest 
(see [1-9]) owing to their ability to operate near the 
ultimate Shannon limit. Seminal work [2] demonstrated 
that turbo codes can deliver bit error rates as low as 10^-5 
at the modest SNR of 0.0 dB - a feat once deemed 
impossible. This astounding "turbo magic" has sparked an 
intense pursuit to demystify the principles underpinning 
their excellent performance. As eloquently stated by 
Forney in [10], "turbo codes work amazingly well, but we 
don't yet fully understand why." The pivotal question 
remains: What catalyzes the remarkable power of turbo 
codes?
A central enabler is the symbiotic relationship between 
iterative decoding and intelligent interleaving. By iterating 
the decoding process, with each new pass benefiting from 
the noise scrambling effects of interleaving, increasingly 
more errors can be progressively identified and eliminated. 
This mechanism allows turbo codes to inch ever closer 
towards the coveted Shannon limit, outperforming 
conventional codes. 
Another key strength lies in the parallel concatenated 
coding structure itself. By ingeniously combining two or more relatively simple component codes in parallel, with 
judicious interleaving between them, the resultant overall 
code can deliver tremendously superior error correction 
capabilities compared to the individual constituent codes 
operating alone. It is this architectural innovation that 
provides the celebrated "turbo" boosting effect.
The core design principles embodied in turbo codes 
include:
1) Parallel concatenation of relatively simple convolutional 
codes instead of a single large code, enabling efficient 
encoding/decoding.
2) Pseudo-random interleaving to disperse burst errors 
and optimize weight distributions for iterative decoding 
gains.
3) Iterative decoding where component decoders 
exchange soft information to synergistically enhance error 
correction on every pass.
4) Synergistically compounding the interleaving gains from 
parallel concatenation with the iterative processing gains 
to approach capacity. 
A simple rate 1/2 turbo encoder and decoder structure are 
illustrated in Fig. 1(a) and 1(b) respectively, where ↓2 
denotes downsampling by 2, and z^(-1) is the delay 
operator D used in coding performance can be outlined as 
follows:
Practical limitations restrict the error correction capability 
of any finite-length code operating at low SNRs due to their inherently limited minimum distance properties. 
Consequently, a single decoding pass can only partially 
reduce errors. The natural recourse of iteratively re-
decoding the output is fundamentally limited, as patterned 
errors like bursts tend to accumulate with each new 
decoding pass, eventually negating any further gains. The 
paradigm-shifting breakthrough is the ingenious use of an 
interleaver between the decoders to randomize the error 
patterns and maximize the complementary error correction 
capabilities on every new pass. This strategic interleaver 
placement then necessitates the deployment of the 
intricate interleaver architecture between the parallel 
concatenated encoders as well.

https://drive.google.com/folderview?id=1CO-iopa-IDHqI4W7HFa4rRHmsc3T1o4G
