module M2
    def my_method2
        'M2#my_method2()'
    end
end

class C2
    prepend M2
end

class D2 < C2; end

D2.ancestors # => [D2, M2, C2, Object, Kernel, BasicObject]
