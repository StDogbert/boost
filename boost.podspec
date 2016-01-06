Pod::Spec.new do |s|
  s.name	= "boost"
  s.version	= "1.59.0"
  s.summary	= "Rene Rivera original boost podspec with ptr_container subspec added."
  s.homepage	= "http://www.boost.org"
  s.license	= { :type => "Boost Software License",
		    :file => "LICENSE_1_0.txt" }
  s.author	= "Alexandr Barenboym"
  s.source	= { :http => "http://sourceforge.net/projects/boost/files/boost/1.59.0/boost_1_59_0.tar.gz" }

  s.ios.deployment_target = "4.0"
  s.osx.deployment_target = "10.6"

#  s.source_files = 'boost/*.hpp', 'boost/{config,smart_ptr}/**/*.hpp'

  s.subspec 'string_algorithms-includes' do |string_algorithms|
    string_algorithms.preserve_paths = 
        "boost/*.h",
        "boost/predef/**/*.h",
        "boost/*.hpp",
        "boost/algorithm/*.hpp",
        "boost/algorithm/**/*.hpp",
        "boost/config/**/*.hpp",
        "boost/core/*.hpp",
        "boost/range/**/*.hpp",
        "boost/bind/**/*.hpp",
        "boost/detail/**/*.hpp",
        "boost/exception/**/*.hpp",
        "boost/function/**/*.hpp",
        "boost/concept/**/*hpp",
        "boost/utility/**/*.hpp",
        "boost/type_traits/**/*.hpp",
        "boost/mpl/**/*.hpp",
        "boost/preprocessor/**/*.hpp",
        "boost/iterator/**/*.hpp"
  end

  s.subspec 'shared_ptr-includes' do |shared_ptr|
    shared_ptr.preserve_paths =	
        "boost/*.h",
        "boost/predef/**/*.h",
        "boost/*.hpp",
        "boost/config/**/*.hpp",
        "boost/core/*.hpp",
        "boost/exception/detail/attribute_noreturn.hpp",
        "boost/exception/exception.hpp",
        "boost/detail/*.hpp",
        "boost/smart_ptr/*.hpp",
        "boost/smart_ptr/**/*.hpp"
  end

  s.subspec 'pointer_cast-includes' do |pointer_cast|
    pointer_cast.preserve_paths = 'boost/pointer_cast.hpp'
  end

  s.subspec 'numeric-includes' do |numeric|
    numeric.preserve_paths = 'boost/numeric/**/*.hpp'
  end

  s.subspec 'preprocessor-includes' do |preprocessor|
    preprocessor.preserve_paths = 'boost/preprocessor/**/*.hpp'
  end

  s.subspec 'math-includes' do |math|
    math.preserve_paths = 
        "boost/*.h",
        "boost/predef/**/*.h",
        "boost/*.hpp",
        "boost/math/**/*.hpp",
        "boost/config/**/*.hpp",
        "boost/detail/*.hpp",
        "boost/utility/*.hpp",
        "boost/mpl/**/*.hpp",
        "boost/type_traits/**/*.hpp",
        "boost/accumulators/**/*.hpp"
  end

  s.subspec 'graph-includes' do |graph|
  	graph.preserve_paths = 
  			"boost/*.h",
        "boost/predef/**/*.h",
        "boost/*.hpp",
        "boost/{algorithm,accumulators,circular_buffer,archive,bimap,bind,chrono,concept,config,container,date_time,detail,dynamic_bitset,exception,filesystem,format,function,functional,fusion,graph,integer,intrusive,io,iterator,math,move,mpi,mpl,multi_index,numeric,optional,parameter,pending,preprocessor,property_map,property_tree,proto,python,random,range,ratio,regex,serialization,smart_ptr,spirit,system,test,thread,tr1,tuple,type_traits,typeof,units,unordered,utility,variant,xpressive}/**/*.hpp",
        "boost/xpressive/**/*.ipp"
  end
  
  s.subspec 'ptr-container' do |ptr_container|
    ptr_container.preserve_paths = 'boost/ptr_container/**/*.hpp'
  end

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/boost"' }

end