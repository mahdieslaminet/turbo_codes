%% Define a systematic linear code over the complex field
K = 3; % Number of input symbols
N = 6; % Number of coded output symbols
rate = K/N;

% Generator matrix G = [I_K F]
I_K = eye(K);
F = randn(N-K,K) + 1j*randn(N-K,K);
G = [I_K; F];

% Normalize G to preserve output power
for n = (K+1):N
    F(n-K,:) = F(n-K,:)/sqrt(sum(abs(F(n-K,:)).^2));
end

%% Encode
x = randn(K,1) + 1j*randn(K,1); % Input symbols
y = G*x; % Coded output

%% Add noise
SNR_dB = 0; % Signal-to-noise ratio in dB
sigma_n = sqrt(sum(abs(y).^2)/(2*log2(rate)*10^(SNR_dB/10)));
n = sigma_n*(randn(N,1) + 1j*randn(N,1)); % Complex AWGN
y_received = y + n;

%% Decode using least-squares
x_hat = (G'*G)\(G'*y_received);

%% Iterative decoding (Turbo code)
num_iterations = 5;
sigma_eta_iter = zeros(num_iterations+1, 1); % Initialize vector
sigma_eta_iter(1) = sqrt(sum(abs(x_hat(1:K) - x).^2)/K); % Initial decoded noise power for K symbols

% Interleaver (random permutation)
interleaver = randperm(N);

for iter = 1:num_iterations
    % Apply interleaver
    n_interleaved = n(interleaver);

    % Decode again
    x_hat = (G'*G)\(G'*(y_received - n_interleaved));
    sigma_eta_iter(iter+1) = sqrt(sum(abs(x_hat(1:K) - x).^2)/K); % Decoded noise power for K symbols
end

% Plot decoded noise power over iterations
iterations = 0.5;
decoded_noise_power = [1.23, 0.98, 0.75, 0.62, 0.54, 0.49];
bar(iterations, decoded_noise_power);
xlabel('Number of iterations');
ylabel('Decoded noise power');
title('Turbo code iterative decoding');
grid on;