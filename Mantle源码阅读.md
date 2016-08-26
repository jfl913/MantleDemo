### Mantle解析JSON为Model整体流程

通过 `+ (NSDictionary *)JSONKeyPathsByPropertyKey` 建立Model的property与JSON的key之间的映射。

将服务端传过来的字典，转换为另一个字典：key是Model的property，value是经过NSValueTransformer转换过的值。

将转换后的字典调用 `- (void)setValue:(nullable id)value forKey:(NSString *)key;`转换为Model。