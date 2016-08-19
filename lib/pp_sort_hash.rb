require "pp_sort_hash/version"

module PpSortHash
  def pretty_print(q)
    q.group(1, '{', '}') {
      q.seplist(self.sort_by {|k, _| k.to_s } , nil, :each) {|k, v|
        q.group {
          q.pp k
          q.text '=>'
          q.group(1) {
            q.breakable ''
            q.pp v
          }
        }
      }
    }
  end
end

class Hash
  prepend PpSortHash
end
