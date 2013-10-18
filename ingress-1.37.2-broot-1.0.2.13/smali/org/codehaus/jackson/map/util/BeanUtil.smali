.class public Lorg/codehaus/jackson/map/util/BeanUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected static isCglibGetCallbacks(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 191
    const-string/jumbo v2, "net.sf.cglib"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "org.hibernate.repackage.cglib"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static isGroovyMetaClassGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "groovy.lang"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static isGroovyMetaClassSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "groovy.lang"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 211
    :cond_0
    return v0
.end method

.method protected static manglePropertyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 242
    if-nez v2, :cond_1

    move-object p0, v0

    .line 258
    :cond_0
    :goto_0
    return-object p0

    .line 247
    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 248
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 249
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 250
    if-eq v3, v4, :cond_3

    .line 251
    if-nez v0, :cond_2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    :cond_2
    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static okNameForGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {p0, v1}, Lorg/codehaus/jackson/map/util/BeanUtil;->okNameForIsGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    invoke-static {p0, v1}, Lorg/codehaus/jackson/map/util/BeanUtil;->okNameForRegularGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    return-object v0
.end method

.method public static okNameForIsGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 127
    const-string/jumbo v1, "is"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 130
    const-class v2, Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/BeanUtil;->manglePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static okNameForRegularGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 100
    const-string/jumbo v1, "get"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const-string/jumbo v1, "getCallbacks"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-static {p0}, Lorg/codehaus/jackson/map/util/BeanUtil;->isCglibGetCallbacks(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :cond_1
    const-string/jumbo v1, "getMetaClass"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    invoke-static {p0}, Lorg/codehaus/jackson/map/util/BeanUtil;->isGroovyMetaClassGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/BeanUtil;->manglePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static okNameForSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v1

    .line 142
    const-string/jumbo v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/jackson/map/util/BeanUtil;->manglePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :cond_1
    const-string/jumbo v2, "metaClass"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    invoke-static {p0}, Lorg/codehaus/jackson/map/util/BeanUtil;->isGroovyMetaClassSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 153
    goto :goto_0
.end method
