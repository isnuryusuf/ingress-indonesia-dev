.class public Lcom/nianticproject/ingress/common/ui/f/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/h/l;

.field private final c:Lcom/nianticproject/ingress/common/model/k;

.field private final d:Lcom/nianticproject/ingress/common/ui/f/a;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private final h:Lcom/nianticproject/ingress/common/x/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;",
            "Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/ui/f/e;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/f/e;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/ui/f/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/f/e;->f:Z

    .line 43
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/f/e;->g:Z

    .line 100
    new-instance v0, Lcom/nianticproject/ingress/common/ui/f/f;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/f/f;-><init>(Lcom/nianticproject/ingress/common/ui/f/e;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/e;->h:Lcom/nianticproject/ingress/common/x/g;

    .line 52
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/f/e;->b:Lcom/nianticproject/ingress/common/h/l;

    .line 53
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/f/e;->c:Lcom/nianticproject/ingress/common/model/k;

    .line 54
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/f/e;->d:Lcom/nianticproject/ingress/common/ui/f/a;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/f/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/f/e;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/f/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/f/e;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/f/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/f/e;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/ui/f/e;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/e;->c:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/ui/f/e;)Lcom/nianticproject/ingress/common/ui/f/a;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/e;->d:Lcom/nianticproject/ingress/common/ui/f/a;

    return-object v0
.end method

.method static synthetic d()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/nianticproject/ingress/common/ui/f/e;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/f/e;->b:Lcom/nianticproject/ingress/common/h/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/f/e;->e:Ljava/lang/String;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/f/e;->h:Lcom/nianticproject/ingress/common/x/g;

    invoke-interface {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/h/l;->a(Ljava/lang/String;ILcom/nianticproject/ingress/common/x/g;)V

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/nianticproject/ingress/common/ui/f/e;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/f/e;->f:Z

    .line 75
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 76
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/f/e;->g:Z

    return v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "UpdateNearbyPortalsTask"

    return-object v0
.end method
