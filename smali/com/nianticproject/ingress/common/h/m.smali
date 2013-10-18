.class public Lcom/nianticproject/ingress/common/h/m;
.super Lcom/nianticproject/ingress/common/f/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/m",
        "<",
        "Lcom/nianticproject/ingress/shared/GameScore;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/u/q;

.field private final c:Lcom/nianticproject/ingress/common/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/h/m;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/h/m;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/m;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/m;->b:Lcom/nianticproject/ingress/common/u/q;

    .line 33
    iput-object p2, p0, Lcom/nianticproject/ingress/common/h/m;->c:Lcom/nianticproject/ingress/common/a;

    .line 34
    return-void
.end method

.method private j()Lcom/nianticproject/ingress/shared/GameScore;
    .locals 3

    .prologue
    .line 39
    :try_start_0
    const-string/jumbo v0, "GetGameScoreTask"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/nianticproject/ingress/common/u/aj;->a()Lcom/nianticproject/ingress/shared/rpc/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 42
    :try_start_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/m;->b:Lcom/nianticproject/ingress/common/u/q;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/u/q;->b(Lcom/nianticproject/ingress/shared/rpc/ab;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/GameScore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    :try_start_2
    sget-object v1, Lcom/nianticproject/ingress/common/h/m;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Failed to get the game score"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/h/m;->j()Lcom/nianticproject/ingress/shared/GameScore;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 5
    .parameter

    .prologue
    .line 25
    check-cast p1, Lcom/nianticproject/ingress/shared/GameScore;

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/GameScore;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/GameScore;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/m;->c:Lcom/nianticproject/ingress/common/a;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/GameScore;->b()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/GameScore;->a()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->a(JJ)Lcom/nianticproject/ingress/shared/plext/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/a;->a(Lcom/nianticproject/ingress/shared/plext/c;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
