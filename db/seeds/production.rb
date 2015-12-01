begin
    mutex = SeedMutex.create(acquired: true)
  rescue ActiveRecord::RecordNotUnique
       mutex = nil
     end

if mutex

   end