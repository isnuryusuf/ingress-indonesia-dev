.class final Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/PersistentGameEntity;


# instance fields
.field private final components:Lcom/google/a/c/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/ar",
            "<",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">;"
        }
    .end annotation
.end field

.field private dirty:Z

.field private final guid:Ljava/lang/String;

.field private lastModifiedMs:J


# direct methods
.method constructor <init>(Ljava/lang/String;JLcom/google/a/c/ar;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/a/c/ar",
            "<",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->guid:Ljava/lang/String;

    .line 150
    iput-wide p2, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->lastModifiedMs:J

    .line 151
    iput-object p4, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->components:Lcom/google/a/c/ar;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->dirty:Z

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->removeInternal(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;Lcom/nianticproject/ingress/gameentity/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->addInternal(Lcom/nianticproject/ingress/gameentity/a;)V

    return-void
.end method

.method private addInternal(Lcom/nianticproject/ingress/gameentity/a;)V
    .locals 5
    .parameter

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->computeValidatedComponentFamily(Lcom/nianticproject/ingress/gameentity/a;)[Ljava/lang/Class;

    move-result-object v2

    .line 247
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 248
    iget-object v4, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->components:Lcom/google/a/c/ar;

    invoke-interface {v4, v0, p1}, Lcom/google/a/c/ar;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/a;

    .line 249
    if-eqz v0, :cond_0

    .line 250
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Given component implementation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " implements component that has already been added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 254
    :cond_1
    instance-of v0, p1, Lcom/nianticproject/ingress/gameentity/i;

    if-eqz v0, :cond_2

    .line 255
    check-cast p1, Lcom/nianticproject/ingress/gameentity/i;

    .line 256
    invoke-interface {p1, p0}, Lcom/nianticproject/ingress/gameentity/i;->setEntity(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 258
    :cond_2
    return-void
.end method

.method private areAnyComponentsDirty()Z
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->components:Lcom/google/a/c/ar;

    invoke-interface {v0}, Lcom/google/a/c/ar;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/a;

    .line 296
    instance-of v2, v0, Lcom/nianticproject/ingress/shared/s;

    if-eqz v2, :cond_0

    .line 297
    check-cast v0, Lcom/nianticproject/ingress/shared/s;

    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/s;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private computeValidatedComponentFamily(Lcom/nianticproject/ingress/gameentity/a;)[Ljava/lang/Class;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ")[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->b()Lcom/nianticproject/ingress/gameentity/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/b;->a(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v1

    .line 238
    array-length v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "Component does not implement any sub-interfaces of Component"

    invoke-static {v0, v2}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 240
    return-object v1

    .line 238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeAllFamiliesImplementedByComponent(Lcom/nianticproject/ingress/gameentity/a;)V
    .locals 5
    .parameter

    .prologue
    .line 218
    invoke-static {}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->b()Lcom/nianticproject/ingress/gameentity/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/b;->a(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v1

    .line 220
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 221
    iget-object v4, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->components:Lcom/google/a/c/ar;

    invoke-interface {v4, v3}, Lcom/google/a/c/ar;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method private removeInternal(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    .line 192
    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 197
    :goto_0
    return-object v0

    .line 196
    :cond_0
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->removeAllFamiliesImplementedByComponent(Lcom/nianticproject/ingress/gameentity/a;)V

    goto :goto_0
.end method


# virtual methods
.method public final add(Lcom/nianticproject/ingress/gameentity/DynamicComponent;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nianticproject/ingress/gameentity/DynamicComponent;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 181
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-class v0, Lcom/nianticproject/ingress/gameentity/DynamicComponent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v2, "Can only add proper sub-interface of DynamicComponent"

    invoke-static {v0, v2}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->addInternal(Lcom/nianticproject/ingress/gameentity/a;)V

    .line 185
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->dirty:Z

    .line 186
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 307
    if-ne p0, p1, :cond_0

    .line 308
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    .line 310
    :cond_0
    instance-of v0, p1, Lcom/nianticproject/ingress/gameentity/f;

    if-nez v0, :cond_1

    .line 311
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/gameentity/f;

    .line 315
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 172
    if-eqz p1, :cond_0

    const-class v0, Lcom/nianticproject/ingress/gameentity/a;

    if-eq p1, v0, :cond_0

    const-class v0, Lcom/nianticproject/ingress/gameentity/DynamicComponent;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Can only get non-null sub-interface of Component or DynamicComponent"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->components:Lcom/google/a/c/ar;

    invoke-interface {v0, p1}, Lcom/google/a/c/ar;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/a;

    return-object v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getComponentsAsMap()Lcom/google/a/c/cr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/cr",
            "<",
            "Lcom/nianticproject/ingress/gameentity/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->components:Lcom/google/a/c/ar;

    invoke-static {v0}, Lcom/google/a/c/cr;->a(Ljava/util/Map;)Lcom/google/a/c/cr;

    move-result-object v0

    return-object v0
.end method

.method public final getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastModifiedMs()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->lastModifiedMs:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isDirty()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->dirty:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->areAnyComponentsDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/DynamicComponent;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nianticproject/ingress/gameentity/DynamicComponent;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 202
    const-class v0, Lcom/nianticproject/ingress/gameentity/DynamicComponent;

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v2, "Can only remove proper sub-interface of DynamicComponent"

    invoke-static {v0, v2}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->removeInternal(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/DynamicComponent;

    .line 206
    if-eqz v0, :cond_0

    .line 207
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->dirty:Z

    .line 209
    :cond_0
    return-object v0

    .line 202
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setClean()V
    .locals 3

    .prologue
    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->dirty:Z

    .line 285
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->components:Lcom/google/a/c/ar;

    invoke-interface {v0}, Lcom/google/a/c/ar;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/a;

    .line 286
    instance-of v2, v0, Lcom/nianticproject/ingress/shared/s;

    if-eqz v2, :cond_0

    .line 287
    check-cast v0, Lcom/nianticproject/ingress/shared/s;

    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/s;->setClean()V

    goto :goto_0

    .line 290
    :cond_1
    return-void
.end method

.method public final setLastModifiedMs(J)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->lastModifiedMs:J

    .line 168
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->guid:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->lastModifiedMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") : {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->components:Lcom/google/a/c/ar;

    invoke-interface {v0}, Lcom/google/a/c/ar;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 265
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder$MapGameEntity;->components:Lcom/google/a/c/ar;

    invoke-interface {v4, v0}, Lcom/google/a/c/ar;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "}, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 271
    :cond_0
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
