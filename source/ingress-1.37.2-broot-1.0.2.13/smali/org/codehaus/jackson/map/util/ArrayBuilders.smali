.class public final Lorg/codehaus/jackson/map/util/ArrayBuilders;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field _booleanBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

.field _byteBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

.field _doubleBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

.field _floatBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

.field _intBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

.field _longBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

.field _shortBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    .line 19
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    .line 20
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    .line 21
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    .line 22
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    .line 24
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    .line 25
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    .line 27
    return-void
.end method

.method public static arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 148
    if-eqz p0, :cond_0

    .line 149
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 150
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-object v1
.end method

.method public static insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 205
    array-length v3, p0

    move v1, v2

    .line 208
    :goto_0
    if-ge v1, v3, :cond_2

    .line 209
    aget-object v0, p0, v1

    if-ne v0, p1, :cond_1

    .line 211
    if-nez v1, :cond_0

    move-object v0, p0

    .line 228
    :goto_1
    return-object v0

    .line 215
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 216
    invoke-static {p0, v2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    aput-object p1, p0, v2

    goto :goto_1

    .line 208
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    add-int/lit8 v1, v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 224
    if-lez v3, :cond_3

    .line 225
    invoke-static {p0, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :cond_3
    aput-object p1, v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final getBooleanBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    .line 34
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    return-object v0
.end method

.method public final getByteBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    .line 42
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    return-object v0
.end method

.method public final getDoubleBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    return-object v0
.end method

.method public final getFloatBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    return-object v0
.end method

.method public final getIntBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    return-object v0
.end method

.method public final getLongBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    return-object v0
.end method

.method public final getShortBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    return-object v0
.end method
