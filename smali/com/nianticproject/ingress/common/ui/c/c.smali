.class public Lcom/nianticproject/ingress/common/ui/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static b:F

.field private static c:F


# instance fields
.field private final d:Lcom/badlogic/gdx/math/Matrix4;

.field private final e:Lcom/nianticproject/ingress/common/scanner/k;

.field private final f:Lcom/nianticproject/ingress/common/model/k;

.field private final g:Lcom/nianticproject/ingress/common/h/l;

.field private final h:Lcom/nianticproject/ingress/common/j/h;

.field private final i:Lcom/nianticproject/ingress/common/c/e;

.field private final j:Lcom/nianticproject/ingress/common/ui/c/h;

.field private k:I

.field private l:I

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/ui/c/q;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/nianticproject/ingress/common/scanner/visuals/bs;

.field private p:Lcom/nianticproject/ingress/common/scanner/visuals/z;

.field private q:Lcom/nianticproject/ingress/common/ui/c/i;

.field private r:Lcom/nianticproject/ingress/common/ui/c/j;

.field private s:Lcom/nianticproject/ingress/common/scanner/eo;

.field private t:F

.field private final u:Lcom/google/a/a/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/ba",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Lcom/nianticproject/ingress/shared/FireEmpResult;",
            "Lcom/nianticproject/ingress/shared/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private v:Lcom/nianticproject/ingress/common/x/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Lcom/nianticproject/ingress/shared/FireEmpResult;",
            "Lcom/nianticproject/ingress/shared/e;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/ui/c/c;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/c/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 71
    const/high16 v0, 0x4000

    sput v0, Lcom/nianticproject/ingress/common/ui/c/c;->b:F

    .line 72
    const/high16 v0, 0x4040

    sput v0, Lcom/nianticproject/ingress/common/ui/c/c;->c:F

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/scanner/visuals/bt;Lcom/nianticproject/ingress/common/scanner/ft;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/scanner/eo;Lcom/nianticproject/ingress/common/ui/c/h;)V
    .locals 6
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
    const/4 v5, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->d:Lcom/badlogic/gdx/math/Matrix4;

    .line 87
    iput v5, p0, Lcom/nianticproject/ingress/common/ui/c/c;->k:I

    .line 91
    iput v5, p0, Lcom/nianticproject/ingress/common/ui/c/c;->l:I

    .line 96
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->n:Ljava/util/Set;

    .line 100
    sget-object v0, Lcom/nianticproject/ingress/common/ui/c/i;->a:Lcom/nianticproject/ingress/common/ui/c/i;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->q:Lcom/nianticproject/ingress/common/ui/c/i;

    .line 101
    sget-object v0, Lcom/nianticproject/ingress/common/ui/c/j;->a:Lcom/nianticproject/ingress/common/ui/c/j;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->r:Lcom/nianticproject/ingress/common/ui/c/j;

    .line 106
    new-instance v0, Lcom/nianticproject/ingress/common/ui/c/d;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/c/d;-><init>(Lcom/nianticproject/ingress/common/ui/c/c;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->u:Lcom/google/a/a/ba;

    .line 114
    new-instance v0, Lcom/nianticproject/ingress/common/ui/c/e;

    const-string/jumbo v1, "FireWeapon"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/ui/c/e;-><init>(Lcom/nianticproject/ingress/common/ui/c/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->v:Lcom/nianticproject/ingress/common/x/g;

    .line 133
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->f:Lcom/nianticproject/ingress/common/model/k;

    .line 134
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->e:Lcom/nianticproject/ingress/common/scanner/k;

    .line 136
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/h/l;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->g:Lcom/nianticproject/ingress/common/h/l;

    .line 137
    invoke-static {p7}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/h;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->h:Lcom/nianticproject/ingress/common/j/h;

    .line 138
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->i:Lcom/nianticproject/ingress/common/c/e;

    .line 139
    iput-object p8, p0, Lcom/nianticproject/ingress/common/ui/c/c;->s:Lcom/nianticproject/ingress/common/scanner/eo;

    .line 140
    invoke-virtual {p5}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->c()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->t:F

    .line 141
    iput-object p9, p0, Lcom/nianticproject/ingress/common/ui/c/c;->j:Lcom/nianticproject/ingress/common/ui/c/h;

    .line 143
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;

    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;

    .line 144
    const-string/jumbo v1, "Weapon must be EmpWeapon"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {p2, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 146
    const-string/jumbo v2, "Weapon must be a Resource"

    invoke-static {v1, v2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v1

    .line 150
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->g()Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;->getMaxRange(Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 151
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->g()Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;->getAverageRange(Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 153
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Lcom/nianticproject/ingress/common/model/k;->a(Z)V

    .line 154
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/c/c;->u:Lcom/google/a/a/ba;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/c/c;->v:Lcom/nianticproject/ingress/common/x/g;

    invoke-interface {p4, p2, v3, v4}, Lcom/nianticproject/ingress/common/h/l;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/a/ba;Lcom/nianticproject/ingress/common/x/g;)V

    .line 155
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/c/c;->i:Lcom/nianticproject/ingress/common/c/e;

    sget-object v4, Lcom/nianticproject/ingress/common/c/bs;->g:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v3, v4}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 158
    new-instance v3, Lcom/nianticproject/ingress/common/scanner/visuals/bs;

    sget v4, Lcom/nianticproject/ingress/common/ui/c/c;->b:F

    invoke-direct {v3, v4}, Lcom/nianticproject/ingress/common/scanner/visuals/bs;-><init>(F)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/ui/c/c;->o:Lcom/nianticproject/ingress/common/scanner/visuals/bs;

    .line 161
    sget v3, Lcom/nianticproject/ingress/common/ui/c/c;->c:F

    int-to-float v2, v2

    invoke-static {v1, v3, v2, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/z;->a(Lcom/nianticproject/ingress/shared/af;FFF)Lcom/nianticproject/ingress/common/scanner/visuals/z;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->p:Lcom/nianticproject/ingress/common/scanner/visuals/z;

    .line 165
    new-instance v0, Lcom/nianticproject/ingress/common/ui/c/g;

    invoke-direct {v0, p0, v5}, Lcom/nianticproject/ingress/common/ui/c/g;-><init>(Lcom/nianticproject/ingress/common/ui/c/c;B)V

    .line 166
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/c/c;->o:Lcom/nianticproject/ingress/common/scanner/visuals/bs;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/c/g;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 167
    invoke-virtual {p6, v0}, Lcom/nianticproject/ingress/common/scanner/ft;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/c/c;)F
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->t:F

    return v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/c/c;Lcom/nianticproject/ingress/common/ui/c/i;)Lcom/nianticproject/ingress/common/ui/c/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/c/c;->q:Lcom/nianticproject/ingress/common/ui/c/i;

    return-object p1
.end method

.method static synthetic a()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/nianticproject/ingress/common/ui/c/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/c/c;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->m:Ljava/util/Set;

    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/FireEmpResult;

    iget-object v0, v0, Lcom/nianticproject/ingress/shared/FireEmpResult;->damages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/model/DamageDetail;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/c/c;->e:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/model/DamageDetail;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/c/c;->m:Ljava/util/Set;

    new-instance v5, Lcom/nianticproject/ingress/common/ui/c/p;

    invoke-direct {v5, v0, v3}, Lcom/nianticproject/ingress/common/ui/c/p;-><init>(Lcom/nianticproject/ingress/shared/model/DamageDetail;Lcom/nianticproject/ingress/common/scanner/ej;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/c/c;->n:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/model/DamageDetail;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/model/DamageDetail;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/c/c;->e:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/c/c;->m:Ljava/util/Set;

    new-instance v4, Lcom/nianticproject/ingress/common/ui/c/o;

    invoke-direct {v4, v2}, Lcom/nianticproject/ingress/common/ui/c/o;-><init>(Lcom/nianticproject/ingress/common/scanner/ej;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/c/c;->n:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->n:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->d()Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->c()Lcom/nianticproject/ingress/shared/rpc/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/f;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->e:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/c/c;->n:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Ljava/util/Set;)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->d:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/c/c;Lcom/nianticproject/ingress/shared/rpc/RpcResult;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->o:Lcom/nianticproject/ingress/common/scanner/visuals/bs;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bs;->b()V

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nianticproject/ingress/common/ui/c/j;->c:Lcom/nianticproject/ingress/common/ui/c/j;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->r:Lcom/nianticproject/ingress/common/ui/c/j;

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->j:Lcom/nianticproject/ingress/common/ui/c/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->j:Lcom/nianticproject/ingress/common/ui/c/h;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/c/h;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/c/c;->g:Lcom/nianticproject/ingress/common/h/l;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "XMP failed: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/c;->a()Lcom/nianticproject/ingress/common/ui/c;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/ui/c;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/h/l;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/nianticproject/ingress/common/ui/c/j;->b:Lcom/nianticproject/ingress/common/ui/c/j;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->r:Lcom/nianticproject/ingress/common/ui/c/j;

    goto :goto_0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/scanner/eo;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->s:Lcom/nianticproject/ingress/common/scanner/eo;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/ui/c/i;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->q:Lcom/nianticproject/ingress/common/ui/c/i;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/scanner/visuals/bs;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->o:Lcom/nianticproject/ingress/common/scanner/visuals/bs;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/ui/c/j;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->r:Lcom/nianticproject/ingress/common/ui/c/j;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/scanner/visuals/z;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->p:Lcom/nianticproject/ingress/common/scanner/visuals/z;

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/ui/c/c;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->m:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/scanner/k;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->e:Lcom/nianticproject/ingress/common/scanner/k;

    return-object v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/j/h;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->h:Lcom/nianticproject/ingress/common/j/h;

    return-object v0
.end method

.method static synthetic k(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->f:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method static synthetic l(Lcom/nianticproject/ingress/common/ui/c/c;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->l:I

    return v0
.end method

.method static synthetic m(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/h/l;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->g:Lcom/nianticproject/ingress/common/h/l;

    return-object v0
.end method

.method static synthetic n(Lcom/nianticproject/ingress/common/ui/c/c;)Lcom/nianticproject/ingress/common/c/e;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->i:Lcom/nianticproject/ingress/common/c/e;

    return-object v0
.end method

.method static synthetic o(Lcom/nianticproject/ingress/common/ui/c/c;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->k:I

    return v0
.end method

.method static synthetic p(Lcom/nianticproject/ingress/common/ui/c/c;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->n:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic q(Lcom/nianticproject/ingress/common/ui/c/c;)I
    .locals 2
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nianticproject/ingress/common/ui/c/c;->k:I

    return v0
.end method

.method static synthetic r(Lcom/nianticproject/ingress/common/ui/c/c;)I
    .locals 2
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/c/c;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nianticproject/ingress/common/ui/c/c;->l:I

    return v0
.end method
