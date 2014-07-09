#!/usr/bin/env ruby


i = 0
while i < 100000000000
    puts i
    if i < 14849
        seb = fork { ls -la }
        seb2 = fork { ls -la }
        Process.detach(seb)
        Process.waitpid(seb2)
    end
    i += 1
end