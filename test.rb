require 'gpgme'

signature_text = "-----BEGIN PGP SIGNATURE-----\n\niQGzBAABCgAdFiEEg06RTz8GyOhnGu0M4sUXex7IZJEFAly2jmYACgkQ4sUXex7I\nZJF6wAv9G4S6Ke7nmMb/Y9d+UexvU4dyy3usEXDVWK8AavlG4LvxauQzYz/U4ypP\nhfdsy+g40B6FYZcb6o76MI9u3Vw6LMNQedAk+yLHcVva4Ree/2GJnx1HBkue7xxv\nuMC1ijsvDnMn2PSRNKhDSUGKiHr39+0oMDDnI4S+OXHtpjP5PJFKpa5ktrUZ7k0n\nvCnd3qIZuut1s5xN/WAm4jpjFZUw5EEQQJtR59Hc0JgNwWf34i4B443Zqr/JxVpE\nndwkhxZw0Xb45Q93htdxLVT/87BOKL20p5Bm14JPA4R1mHv3xBMv65+49waIHbcr\nPSbFnQul0aYpVF1a+2JzYAmttW5a21z5AEYazSXTtIuaPeAUmuRmBONxC6JzO1kq\nBKHDkxxT3rJNDrIWPoEtvQ6ZdqCD96Bh3GEOx/Vzq36fn5NO+P7MauFHWVfBowqk\nOwvkJ5IghSNRrkJgOTSXr2nVqXOVMOxCaEtXvwr93ZLVJORNA6T6ILEskloBm5ni\nYPUbFnVT\n=BkEe\n-----END PGP SIGNATURE-----"

signed_text = "tree ea0790db4f2a7fd3c1b98a82462c48abadda95db\nauthor likui <likui@oschina.cn> 1555467867 +0800\ncommitter likui <likui@oschina.cn> 1555467867 +0800\n\ngpg likui@oschina.cn\n\n834E914F3F06C8E8671AED0CE2C5177B1EC86491\n"

s = GPGME::Crypto.new.verify(signature_text, signed_text: signed_text) do |verified_signature|
  break verified_signature
end

puts s.fingerprint
