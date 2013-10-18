.class final Lcom/nianticproject/ingress/common/missions/ba;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/aw;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/aw;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/ba;->a:Lcom/nianticproject/ingress/common/missions/aw;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ba;->a:Lcom/nianticproject/ingress/common/missions/aw;

    iget-object v1, v0, Lcom/nianticproject/ingress/common/missions/aw;->c:Lcom/nianticproject/ingress/gameentity/f;

    .line 258
    new-instance v0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/ba;->a:Lcom/nianticproject/ingress/common/missions/aw;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/aw;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/ba;->a:Lcom/nianticproject/ingress/common/missions/aw;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/aw;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/b/a;->b(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/SimpleTeam;

    sget-object v3, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    invoke-direct {v2, v3}, Lcom/nianticproject/ingress/gameentity/components/SimpleTeam;-><init>(Lcom/nianticproject/ingress/shared/ai;)V

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;

    invoke-direct {v2}, Lcom/nianticproject/ingress/gameentity/components/SimplePortal;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/DefaultActionRange;

    invoke-direct {v2}, Lcom/nianticproject/ingress/gameentity/components/DefaultActionRange;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;-><init>(Lcom/nianticproject/ingress/shared/portal/PortalImage;I)V

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v2

    .line 264
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ba;->a:Lcom/nianticproject/ingress/common/missions/aw;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/aw;->c:Lcom/nianticproject/ingress/gameentity/f;

    const-class v3, Lcom/nianticproject/ingress/gameentity/components/ImageByUrl;

    invoke-interface {v0, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/ImageByUrl;

    .line 265
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ba;->a:Lcom/nianticproject/ingress/common/missions/aw;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a()Lcom/nianticproject/ingress/gameentity/PersistentGameEntity;

    move-result-object v2

    iput-object v2, v0, Lcom/nianticproject/ingress/common/missions/aw;->c:Lcom/nianticproject/ingress/gameentity/f;

    .line 269
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    sget-object v2, Lcom/nianticproject/ingress/shared/m;->a:Lcom/nianticproject/ingress/shared/m;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getDescriptiveText(Lcom/nianticproject/ingress/shared/m;)Ljava/lang/String;

    move-result-object v2

    .line 270
    if-eqz v2, :cond_1

    .line 271
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ba;->a:Lcom/nianticproject/ingress/common/missions/aw;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/aw;->c:Lcom/nianticproject/ingress/gameentity/f;

    const-class v3, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    sget-object v3, Lcom/nianticproject/ingress/shared/m;->a:Lcom/nianticproject/ingress/shared/m;

    invoke-interface {v0, v3, v2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->addOrUpdateDescriptiveText(Lcom/nianticproject/ingress/shared/m;Ljava/lang/String;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ba;->a:Lcom/nianticproject/ingress/common/missions/aw;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/aw;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponentsAsMap()Lcom/google/a/c/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/cr;->size()I

    move-result v0

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponentsAsMap()Lcom/google/a/c/cr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/c/cr;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 278
    invoke-static {}, Lcom/nianticproject/ingress/common/missions/aw;->w()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected variance in neutralized portal. currentComponentMapSize("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/ba;->a:Lcom/nianticproject/ingress/common/missions/aw;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/missions/aw;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponentsAsMap()Lcom/google/a/c/cr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/a/c/cr;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") oldComponentMapSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponentsAsMap()Lcom/google/a/c/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/c/cr;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ba;->a:Lcom/nianticproject/ingress/common/missions/aw;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/aw;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/ba;->a:Lcom/nianticproject/ingress/common/missions/aw;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/aw;->c:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v1}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/ad;->d(Ljava/util/Set;)V

    .line 285
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ba;->a:Lcom/nianticproject/ingress/common/missions/aw;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/aw;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/ba;->a:Lcom/nianticproject/ingress/common/missions/aw;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/aw;->f(Lcom/nianticproject/ingress/common/missions/aw;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/ad;->c(Ljava/util/Set;)V

    .line 291
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ba;->a:Lcom/nianticproject/ingress/common/missions/aw;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/ba;->a:Lcom/nianticproject/ingress/common/missions/aw;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/aw;->g(Lcom/nianticproject/ingress/common/missions/aw;)Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    const/4 v2, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/aw;->a(Lcom/nianticproject/ingress/common/w/d;ILjava/util/concurrent/TimeUnit;)V

    .line 292
    return-void
.end method
