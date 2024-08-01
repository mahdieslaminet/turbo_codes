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

References

[1] C. Berrou, A. Glavieux, P. Thitimajshima, Near Shannon limit error-correcting coding and 
decoding: Turbo-codes.1, in: Proceedings of ICC'93 - IEEE International
Conference on Communications, IEEE, 1993, pp. 1064–1070.

[2] D. Divsalar, F. Pollara, Turbo codes for PCS applications, in: Proceedings IEEE International 
Conference on Communications ICC '95, IEEE, 1995, pp. 54–59.

[3] P. Jung, M. Nasshan, Performance evaluation of turbo codes for short frame transmission 
systems, Electronics Letters 30 (2) (1994) 111–113.

[4] P. Jung, M. Nasshan, Dependence of the error performance of turbo codes on the 
interleaver structure in short frame transmission systems, Electronics Letters 30
(4) (1994) 287–288.

[5] S. Benedetto, G. Montorsi, Average performance of parallel concatenated block codes, 
Electronics Letters 31 (3) (1995) 156–158.

[6] S. Benedetto, G. Montorsi, Performance evaluation of turbo-codes, Electronics Letters 31 (3) 
(1995) 163–165.

[7] S. Benedetto, G. Montorsi, Unveiling turbo codes: Some results on parallel concatenated 
coding schemes, IEEE Transactions on Information Theory 42 (2) (1996)
409–428.

[8] J. Hagenauer, E. Offer, L. Papke, Iterative decoding of binary block and convolutional codes, 
IEEE Transactions on Information Theory 42 (2) (1996) 429–445.

[9] C. Berrou, A. Glavieux, Near optimum error correcting coding and decoding: Turbo codes, 
IEEE Transactions on Information Theory 44 (10) (1996) 1261–1271.

[10] IEEE Information Theory Society Newsletter, A conversation with G. David Forney, Jr. 47 (2) 
(1997).

[11] S.J. Johnson, Iterative Error Correction, New York: Cambridge University Press, 2012.

[12] X.-G. Xia, On modulated coding and least square decoding via coded modulation and 
Viterbi decoding, technical report #97-6-2, Department of Electrical and
Computer Engineering, University of Delaware, 1997.

[13] X.-G. Xia, Modulated Coding for intersymbol interference channels, New York: Marcel 
Dekker, 2000.

1. Hagenauer, J. (1997). The turbo principle: Tutorial introduction and state of the art. In Proc. 
International Symposium on Turbo Codes (pp. 1-11).

2. Richardson, T. J., & Urbanke, R. L. (2001). The renaissance of Gallager's low-density parity-
check codes. IEEE Communications Magazine, 39(8), 126-131.

3. Ten Brink, S. (2001). Convergence behavior of iteratively decoded parallel concatenated 
codes. IEEE Transactions on Communications, 49(10), 1727-1737.

4. El-Khamy, S. E. (2005). Signal processing perspective of turbo codes. IEE Proceedings-
Communications, 152(4), 423-429.

5. Tüchler, M., Koetter, R., & Singer, A. C. (2002). Turbo equalization: Principles and new results. 
IEEE Transactions on Communications, 50(5), 754-767.
https://drive.google.com/folderview?id=1CO-iopa-IDHqI4W7HFa4rRHmsc3T1o4G

dane202122@gmail.com
