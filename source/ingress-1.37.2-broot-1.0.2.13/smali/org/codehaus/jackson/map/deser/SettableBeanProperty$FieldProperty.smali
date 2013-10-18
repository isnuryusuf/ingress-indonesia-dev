.class public final Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;
.super Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
.source "SourceFile"


# instance fields
.field protected final _annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedField;

.field protected final _field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedField;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 539
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;)V

    .line 540
    iput-object p5, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 541
    invoke-virtual {p5}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_field:Ljava/lang/reflect/Field;

    .line 542
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 546
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 547
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_field:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_field:Ljava/lang/reflect/Field;

    .line 548
    return-void
.end method


# virtual methods
.method public final deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 579
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 580
    return-void
.end method

.method public final getMember()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 587
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;"
        }
    .end annotation

    .prologue
    .line 552
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;-><init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method

.method public final bridge synthetic withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .parameter

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;

    move-result-object v0

    return-object v0
.end method
