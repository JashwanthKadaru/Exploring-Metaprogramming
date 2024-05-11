# Definition of using inside Kernel.
module Kernel
    def using(resource)
        begin
            yield # block of code is executed as it is. Errors are not intercepted.
        ensure
            resource.dispose # At the end resource is disposed.
        end
    end
end

# testing using module
module TestUsing
    class Resource
        def dispose
            @disposed = true
        end
        def disposed?
            @disposed
        end
    end

    def test_disposes_of_resources
        r = Resource.new
        using(r) {}
        assert r.disposed?
    end
    
    def test_disposes_of_resources_in_case_of_exception
        r = Resource.new
        assert_raises(Exception) {
            using(r) {
                raise Exception
            }
        }
        assert r.disposed?
    end
end