.class public Lcom/nianticproject/ingress/common/h/c;
.super Lcom/nianticproject/ingress/common/f/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/j",
        "<",
        "Ljava/lang/String;",
        "Lcom/nianticproject/ingress/shared/ad;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/a;

.field private final c:Lcom/nianticproject/ingress/common/g/e;

.field private final d:Lcom/nianticproject/ingress/common/c/e;

.field private final e:Lcom/nianticproject/ingress/common/model/k;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/nianticproject/ingress/gameentity/f;

.field private final h:Lcom/nianticproject/ingress/gameentity/components/Portal;

.field private final i:I

.field private j:Lcom/nianticproject/ingress/gameentity/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/h/c;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/h/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/f;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/f/j;-><init>(Lcom/nianticproject/ingress/common/u/q;)V

    .line 73
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/a;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->b:Lcom/nianticproject/ingress/common/a;

    .line 74
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->c:Lcom/nianticproject/ingress/common/g/e;

    .line 75
    iput-object p4, p0, Lcom/nianticproject/ingress/common/h/c;->e:Lcom/nianticproject/ingress/common/model/k;

    .line 76
    invoke-static {p5}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->f:Ljava/lang/String;

    .line 77
    invoke-static {p6}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->g:Lcom/nianticproject/ingress/gameentity/f;

    .line 78
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {p6, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->h:Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 79
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->d:Lcom/nianticproject/ingress/common/c/e;

    .line 80
    iput p7, p0, Lcom/nianticproject/ingress/common/h/c;->i:I

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/h/c;)V
    .locals 3
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->j:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->j:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/c;->g:Lcom/nianticproject/ingress/gameentity/f;

    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->removeLinkedResonatorByGuid(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/r;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dh;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/nianticproject/ingress/gameentity/components/ControllingTeam;

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/gameentity/f;->remove(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/DynamicComponent;

    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/SimpleTeam;

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/SimpleTeam;-><init>(Lcom/nianticproject/ingress/shared/ai;)V

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/gameentity/f;->add(Lcom/nianticproject/ingress/gameentity/DynamicComponent;)V

    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Captured;

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/gameentity/f;->remove(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/DynamicComponent;

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->c:Lcom/nianticproject/ingress/common/g/e;

    invoke-static {}, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->m()Lcom/nianticproject/ingress/shared/model/f;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/c;->g:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/shared/model/f;->a(Ljava/util/Set;)Lcom/nianticproject/ingress/shared/model/f;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/c;->j:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/shared/model/f;->a(Ljava/util/Collection;)Lcom/nianticproject/ingress/shared/model/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/model/f;->a()Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/shared/model/e;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 287
    if-eqz p0, :cond_0

    const-string/jumbo v0, "tmp-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/h/c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/h/c;)Lcom/nianticproject/ingress/common/g/e;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->c:Lcom/nianticproject/ingress/common/g/e;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/nianticproject/ingress/shared/rpc/RpcResult;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;)",
            "Lcom/nianticproject/ingress/common/x/f;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    sget-object v0, Lcom/nianticproject/ingress/common/h/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 193
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->h:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getOccupiedSlots()Lcom/google/a/c/du;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->d:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->n:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 201
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->b:Lcom/nianticproject/ingress/common/a;

    const-string/jumbo v1, "Successfully deployed"

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/a;->c(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->m()Lcom/nianticproject/ingress/shared/model/f;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/c;->j:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/shared/model/f;->a(Ljava/util/Collection;)Lcom/nianticproject/ingress/shared/model/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/model/f;->a()Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;

    move-result-object v1

    .line 209
    new-instance v0, Lcom/nianticproject/ingress/common/h/ak;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/c;->c:Lcom/nianticproject/ingress/common/g/e;

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/h/ak;-><init>(Lcom/nianticproject/ingress/shared/model/e;Lcom/nianticproject/ingress/common/g/e;)V

    .line 214
    :goto_1
    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->d:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->az:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->d:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->E:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 212
    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/c;->b:Lcom/nianticproject/ingress/common/a;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Deployment failed ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/c;->a()Lcom/nianticproject/ingress/common/ui/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/ui/c;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/a;->c(Ljava/lang/String;)V

    .line 214
    new-instance v0, Lcom/nianticproject/ingress/common/h/d;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/h/d;-><init>(Lcom/nianticproject/ingress/common/h/c;)V

    goto :goto_1
.end method

.method protected final c()Lcom/nianticproject/ingress/shared/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Lcom/nianticproject/ingress/common/u/t",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->d:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aC:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 155
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->b:Lcom/nianticproject/ingress/common/a;

    const-string/jumbo v1, "Deploying..."

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/a;->c(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->j:Lcom/nianticproject/ingress/gameentity/f;

    if-nez v0, :cond_0

    .line 161
    sget-object v0, Lcom/nianticproject/ingress/common/h/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Some items already being used or do not exist (can be caused if the user selects items faster than we can mark them used)."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->s:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->c:Lcom/nianticproject/ingress/common/g/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/c;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/e;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    .line 168
    if-nez v0, :cond_1

    .line 169
    sget-object v0, Lcom/nianticproject/ingress/common/h/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Can not find resonator resource entity (id: %s) in inventory."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/h/c;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->s:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_1
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    .line 175
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->h()Lcom/nianticproject/ingress/knobs/XmCostKnobs;

    move-result-object v1

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;->getLevel()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->c(I)I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/c;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/c;->g:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/nianticproject/ingress/common/h/c;->i:I

    invoke-static {v1, v2, v3, v0}, Lcom/nianticproject/ingress/common/u/aq;->a(Ljava/lang/String;Ljava/lang/String;II)Lcom/nianticproject/ingress/common/u/t;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->t:Lcom/nianticproject/ingress/shared/ad;

    return-object v0
.end method

.method public final f()Lcom/nianticproject/ingress/shared/Result;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 139
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->c:Lcom/nianticproject/ingress/common/g/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/c;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/e;->a(Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->H:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->j:Lcom/nianticproject/ingress/gameentity/f;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->c:Lcom/nianticproject/ingress/common/g/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/c;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/e;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/nianticproject/ingress/common/h/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Can not find resonator resource entity (id: %s) in inventory."

    new-array v2, v13, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/h/c;->f:Ljava/lang/String;

    aput-object v3, v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->s:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    .line 144
    :goto_1
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v1

    if-nez v1, :cond_a

    .line 145
    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/c;->c:Lcom/nianticproject/ingress/common/g/e;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/c;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/g/e;->b(Ljava/util/Set;)Z

    .line 146
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_1
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    if-nez v0, :cond_2

    sget-object v0, Lcom/nianticproject/ingress/common/h/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Creating resonator with resource entity that is not a resource with level, ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->f:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/c;->e:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/ad;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/c;->e:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/h/c;->g:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;->getLevel()I

    move-result v4

    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->e:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/b/a;->b(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    move-result-object v6

    iget v0, p0, Lcom/nianticproject/ingress/common/h/c;->i:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/nianticproject/ingress/common/h/c;->i:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    :cond_3
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v3, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-static {v0, v6}, Lcom/nianticproject/ingress/shared/ac;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/components/LocationE6;)Lcom/nianticproject/ingress/shared/r;

    move-result-object v0

    move-object v1, v0

    :goto_2
    if-nez v1, :cond_5

    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->m:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    move-object v2, v0

    :goto_3
    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/nianticproject/ingress/common/h/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Creating pending resonator failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/Result;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/Result;->b()Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    iget v0, p0, Lcom/nianticproject/ingress/common/h/c;->i:I

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/r;->a(I)Lcom/nianticproject/ingress/shared/r;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_5
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v3, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    if-nez v0, :cond_6

    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->u:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :cond_6
    invoke-static {v0, v6, v1}, Lcom/nianticproject/ingress/shared/ac;->a(Lcom/nianticproject/ingress/gameentity/components/LocationE6;Lcom/nianticproject/ingress/gameentity/components/LocationE6;Lcom/nianticproject/ingress/shared/r;)Lcom/google/a/d/u;

    move-result-object v0

    new-instance v6, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "tmp-"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x43e0

    mul-double/2addr v8, v10

    double-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v4, v3, v5}, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    new-instance v3, Lcom/nianticproject/ingress/gameentity/components/SimpleTeam;

    invoke-direct {v3, v2}, Lcom/nianticproject/ingress/gameentity/components/SimpleTeam;-><init>(Lcom/nianticproject/ingress/shared/ai;)V

    invoke-virtual {v6, v3}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/b/a;->b(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    new-instance v0, Lcom/google/a/a/ak;

    invoke-virtual {v6}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a()Lcom/nianticproject/ingress/gameentity/PersistentGameEntity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/a/a/ak;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_3

    :cond_7
    new-instance v3, Lcom/nianticproject/ingress/shared/ab;

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->b()Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/nianticproject/ingress/shared/ab;-><init>(Lcom/nianticproject/ingress/knobs/PortalKnobBundle;)V

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/Result;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/ak;

    iget-object v0, v0, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/h/c;->h:Lcom/nianticproject/ingress/gameentity/components/Portal;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/c;->e:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/Result;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/ak;

    iget-object v1, v1, Lcom/google/a/a/ak;->b:Ljava/lang/Object;

    check-cast v1, Lcom/nianticproject/ingress/shared/r;

    invoke-virtual {v3, v0, v4, v5, v1}, Lcom/nianticproject/ingress/shared/ab;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/components/Portal;Ljava/lang/String;Lcom/nianticproject/ingress/shared/r;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/nianticproject/ingress/common/h/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Deploy pending resonator failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->b()Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/Result;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/ak;

    iget-object v0, v0, Lcom/google/a/a/ak;->a:Ljava/lang/Object;

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->j:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->c:Lcom/nianticproject/ingress/common/g/e;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/nianticproject/ingress/gameentity/f;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/c;->j:Lcom/nianticproject/ingress/gameentity/f;

    aput-object v2, v1, v12

    iget-object v2, p0, Lcom/nianticproject/ingress/common/h/c;->g:Lcom/nianticproject/ingress/gameentity/f;

    aput-object v2, v1, v13

    invoke-static {}, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->m()Lcom/nianticproject/ingress/shared/model/f;

    move-result-object v2

    invoke-static {v1}, Lcom/google/a/c/jc;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/shared/model/f;->a(Ljava/util/Set;)Lcom/nianticproject/ingress/shared/model/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/model/f;->a()Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/e;->a(Lcom/nianticproject/ingress/shared/model/e;)V

    :cond_9
    invoke-static {}, Lcom/nianticproject/ingress/shared/Result;->a()Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto/16 :goto_1

    .line 148
    :cond_a
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/c;->j:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto/16 :goto_0
.end method
