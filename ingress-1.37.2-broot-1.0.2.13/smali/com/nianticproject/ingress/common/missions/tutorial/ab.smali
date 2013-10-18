.class final Lcom/nianticproject/ingress/common/missions/tutorial/ab;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# static fields
.field static final a:Lcom/nianticproject/ingress/common/w/d;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/missions/tutorial/u;

.field private final c:Lcom/nianticproject/ingress/common/model/m;

.field private final d:Lcom/nianticproject/ingress/common/c/ak;

.field private final e:Lcom/nianticproject/ingress/common/h;

.field private f:Lcom/nianticproject/ingress/common/model/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "XM_COLLECTED_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->a:Lcom/nianticproject/ingress/common/w/d;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/c/ak;Lcom/nianticproject/ingress/common/h;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    const-string/jumbo v0, "XmCollectingState"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->b:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    .line 34
    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->c:Lcom/nianticproject/ingress/common/model/m;

    .line 35
    iput-object p3, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->d:Lcom/nianticproject/ingress/common/c/ak;

    .line 36
    iput-object p4, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->e:Lcom/nianticproject/ingress/common/h;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/tutorial/ab;)Lcom/nianticproject/ingress/common/model/m;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->c:Lcom/nianticproject/ingress/common/model/m;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/missions/tutorial/ab;)Lcom/nianticproject/ingress/common/missions/tutorial/u;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->b:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->d:Lcom/nianticproject/ingress/common/c/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/ak;->a(Z)V

    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->e:Lcom/nianticproject/ingress/common/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/h;->a(Z)V

    .line 43
    new-instance v0, Lcom/nianticproject/ingress/common/missions/tutorial/ac;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/ac;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/ab;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->f:Lcom/nianticproject/ingress/common/model/l;

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->c:Lcom/nianticproject/ingress/common/model/m;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->f:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/m;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 54
    return-void
.end method

.method public final u_()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->d:Lcom/nianticproject/ingress/common/c/ak;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/ak;->a(Z)V

    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->c:Lcom/nianticproject/ingress/common/model/m;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->f:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/m;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 60
    return-void
.end method
