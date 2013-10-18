.class public Lcom/nianticproject/ingress/common/missions/aw;
.super Lcom/nianticproject/ingress/common/missions/a;
.source "SourceFile"


# static fields
.field private static final y:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private A:Ljava/lang/String;

.field private final B:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final C:Lcom/nianticproject/ingress/common/w/d;

.field private final D:Lcom/nianticproject/ingress/common/w/d;

.field private final E:Lcom/nianticproject/ingress/common/w/d;

.field private final F:Lcom/nianticproject/ingress/common/w/d;

.field private final G:Lcom/nianticproject/ingress/common/w/h;

.field private final H:Lcom/nianticproject/ingress/common/w/h;

.field private final I:Lcom/nianticproject/ingress/common/w/h;

.field private final J:Lcom/nianticproject/ingress/common/w/h;

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/missions/aw;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/aw;->y:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/cq;Lcom/nianticproject/ingress/common/g/ad;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/h/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/ui/elements/i;Lcom/nianticproject/ingress/common/model/a/e;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct/range {p0 .. p9}, Lcom/nianticproject/ingress/common/missions/a;-><init>(Lcom/nianticproject/ingress/common/missions/cq;Lcom/nianticproject/ingress/common/g/ad;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/h/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/ui/elements/i;Lcom/nianticproject/ingress/common/model/a/e;)V

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 204
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "WEAPON_FIRED_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->C:Lcom/nianticproject/ingress/common/w/d;

    .line 205
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "ATTACK_PLAYER_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->D:Lcom/nianticproject/ingress/common/w/d;

    .line 206
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "MAKE_PORTAL_NEUTRAL_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->E:Lcom/nianticproject/ingress/common/w/d;

    .line 207
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "WEAPON_FIRED_COMPLETE_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->F:Lcom/nianticproject/ingress/common/w/d;

    .line 210
    new-instance v0, Lcom/nianticproject/ingress/common/missions/ax;

    const-string/jumbo v1, "MISSION_ACTIVATED"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/ax;-><init>(Lcom/nianticproject/ingress/common/missions/aw;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->G:Lcom/nianticproject/ingress/common/w/h;

    .line 221
    new-instance v0, Lcom/nianticproject/ingress/common/missions/ay;

    const-string/jumbo v1, "WEAPON_FIRED_STATE"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/ay;-><init>(Lcom/nianticproject/ingress/common/missions/aw;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->H:Lcom/nianticproject/ingress/common/w/h;

    .line 234
    new-instance v0, Lcom/nianticproject/ingress/common/missions/az;

    const-string/jumbo v1, "ATTACK_PLAYER_STATE"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/az;-><init>(Lcom/nianticproject/ingress/common/missions/aw;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->I:Lcom/nianticproject/ingress/common/w/h;

    .line 251
    new-instance v0, Lcom/nianticproject/ingress/common/missions/ba;

    const-string/jumbo v1, "MAKE_PORTAL_NEUTRAL_STATE"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/ba;-><init>(Lcom/nianticproject/ingress/common/missions/aw;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->J:Lcom/nianticproject/ingress/common/w/h;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "training."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/nianticproject/ingress/shared/g;->d:Lcom/nianticproject/ingress/shared/g;

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/g;->a(Lcom/nianticproject/ingress/shared/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->z:Ljava/lang/String;

    .line 144
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/aw;)V
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/m;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    if-ne v0, v1, :cond_0

    sget-object v2, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/aw;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/aw;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v4}, Lcom/nianticproject/ingress/common/model/m;->k()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/aw;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v7, v4, Lcom/nianticproject/ingress/common/missions/ac;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/aw;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v8, v4, Lcom/nianticproject/ingress/common/missions/ac;->c:Ljava/lang/String;

    move v4, v3

    invoke-interface/range {v0 .. v8}, Lcom/nianticproject/ingress/common/g/ad;->a(Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->c:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->c:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dh;->d_()Lcom/google/a/c/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ct;->b()Lcom/google/a/c/lj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/lj;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->m:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/aw;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/google/a/d/u;)V

    return-void

    :cond_0
    sget-object v2, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    goto :goto_0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/missions/aw;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/missions/aw;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/missions/aw;)Lcom/nianticproject/ingress/common/w/d;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->D:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/missions/aw;)Lcom/nianticproject/ingress/common/w/d;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->E:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/missions/aw;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/missions/aw;)Lcom/nianticproject/ingress/common/w/d;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->F:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/missions/aw;)Lcom/nianticproject/ingress/common/w/d;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->C:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic w()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/nianticproject/ingress/common/missions/aw;->y:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method


# virtual methods
.method protected final b(Lcom/nianticproject/ingress/common/w/c;)V
    .locals 4
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->e:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/aw;->d:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/aw;->G:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/aw;->G:Lcom/nianticproject/ingress/common/w/h;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/aw;->C:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/aw;->H:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/aw;->H:Lcom/nianticproject/ingress/common/w/h;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/aw;->D:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/aw;->I:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/aw;->I:Lcom/nianticproject/ingress/common/w/h;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/aw;->E:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/aw;->J:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/aw;->J:Lcom/nianticproject/ingress/common/w/h;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/aw;->F:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/aw;->f:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 177
    return-void
.end method

.method protected final e()Lcom/nianticproject/ingress/common/missions/aa;
    .locals 4

    .prologue
    .line 181
    new-instance v0, Lcom/nianticproject/ingress/common/missions/aa;

    const-string/jumbo v1, "Fire XMP"

    const-string/jumbo v2, "This Portal is resonated. In this simulation, it is enemy controlled. To attack, move within range of the Portal, press and hold on the Scanner Map, then select FIRE XMP.\n\n"

    sget-object v3, Lcom/nianticproject/ingress/common/c/bs;->O:Lcom/nianticproject/ingress/common/c/bs;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/aa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/c/bs;)V

    return-object v0
.end method

.method protected final f()Lcom/nianticproject/ingress/common/missions/aa;
    .locals 4

    .prologue
    .line 192
    new-instance v0, Lcom/nianticproject/ingress/common/missions/aa;

    const-string/jumbo v1, "Fire XMP"

    const-string/jumbo v2, "Portal neutralized. It is ready for capture."

    sget-object v3, Lcom/nianticproject/ingress/common/c/bs;->N:Lcom/nianticproject/ingress/common/c/bs;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/aa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/c/bs;)V

    return-object v0
.end method

.method public final g()V
    .locals 6

    .prologue
    .line 148
    sget-object v0, Lcom/nianticproject/ingress/common/missions/aw;->y:Lcom/nianticproject/ingress/common/w/aa;

    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->k:Lcom/nianticproject/ingress/common/model/m;

    const-wide/16 v1, 0x3e8

    sget-object v3, Lcom/nianticproject/ingress/common/model/z;->d:Lcom/nianticproject/ingress/common/model/z;

    invoke-interface {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/model/m;->a(JLcom/nianticproject/ingress/common/model/z;)V

    .line 154
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->j:Lcom/nianticproject/ingress/common/g/ad;

    new-instance v1, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/aw;->z:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/aw;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/model/m;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;

    sget-object v3, Lcom/nianticproject/ingress/shared/af;->b:Lcom/nianticproject/ingress/shared/af;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;-><init>(Lcom/nianticproject/ingress/shared/af;I)V

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a()Lcom/nianticproject/ingress/gameentity/PersistentGameEntity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/ad;->b(Ljava/util/Collection;)V

    .line 160
    return-void
.end method

.method protected final i()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/w/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aw;->G:Lcom/nianticproject/ingress/common/w/h;

    invoke-static {v0}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method protected final m()Lcom/nianticproject/ingress/common/missions/em;
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lcom/nianticproject/ingress/common/missions/bb;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/bb;-><init>(Lcom/nianticproject/ingress/common/missions/aw;)V

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string/jumbo v0, "Fire XMP"

    return-object v0
.end method

.method public final r()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    const-string/jumbo v0, "Press and hold on map"

    const-string/jumbo v1, "Select FIRE XMP"

    invoke-static {v0, v1}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method
