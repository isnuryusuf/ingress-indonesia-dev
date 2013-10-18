.class public final Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;
.super Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
.source "SourceFile"


# instance fields
.field protected final _backProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

.field protected final _isContainer:Z

.field protected final _managedProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

.field protected final _referenceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/util/Annotations;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 621
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    iget-object v2, p2, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    invoke-direct {p0, v0, v1, v2, p4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;)V

    .line 623
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_referenceName:Ljava/lang/String;

    .line 624
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 625
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 626
    iput-boolean p5, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_isContainer:Z

    .line 627
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 632
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_referenceName:Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_referenceName:Ljava/lang/String;

    .line 633
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_isContainer:Z

    iput-boolean v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_isContainer:Z

    .line 634
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 635
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 636
    return-void
.end method


# virtual methods
.method public final deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 667
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 668
    return-void
.end method

.method public final getMember()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getMember()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 674
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 678
    if-eqz p2, :cond_7

    .line 679
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_isContainer:Z

    if-eqz v0, :cond_6

    .line 680
    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 681
    check-cast p2, [Ljava/lang/Object;

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_7

    aget-object v2, p2, v0

    .line 682
    if-eqz v2, :cond_0

    .line 683
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v3, v2, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 681
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    :cond_1
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 687
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 688
    if-eqz v1, :cond_2

    .line 689
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v2, v1, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 692
    :cond_3
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 693
    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 694
    if-eqz v1, :cond_4

    .line 695
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v2, v1, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 699
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported container type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") when resolving reference \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_referenceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0, p2, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 706
    :cond_7
    return-void
.end method

.method public final withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;"
        }
    .end annotation

    .prologue
    .line 640
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;-><init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method

.method public final bridge synthetic withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .parameter

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;

    move-result-object v0

    return-object v0
.end method
