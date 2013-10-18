.class final Lcom/nianticproject/ingress/common/m;
.super Lcom/nianticproject/ingress/common/f/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/m",
        "<",
        "Lcom/nianticproject/ingress/common/x/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/l;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/l;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/nianticproject/ingress/common/m;->a:Lcom/nianticproject/ingress/common/l;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/m;-><init>()V

    return-void
.end method

.method private j()Lcom/nianticproject/ingress/common/x/f;
    .locals 6

    .prologue
    .line 117
    :try_start_0
    const-string/jumbo v0, "UpdateGameStateAndInventoryTask"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    const-string/jumbo v0, "ClearCacheIfNecessary"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/nianticproject/ingress/common/m;->a:Lcom/nianticproject/ingress/common/l;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/l;->a(Lcom/nianticproject/ingress/common/l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/common/m;->a:Lcom/nianticproject/ingress/common/l;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/l;->b(Lcom/nianticproject/ingress/common/l;)Lcom/nianticproject/ingress/common/x/f;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/nianticproject/ingress/common/n;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/n;-><init>(Lcom/nianticproject/ingress/common/m;)V

    .line 156
    new-instance v2, Lcom/nianticproject/ingress/common/x/h;

    const-string/jumbo v3, "asyncUpdateWithRespawn"

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/nianticproject/ingress/common/x/f;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-direct {v2, v3, v4}, Lcom/nianticproject/ingress/common/x/h;-><init>(Ljava/lang/String;[Lcom/nianticproject/ingress/common/x/f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v2

    .line 126
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/m;->j()Lcom/nianticproject/ingress/common/x/f;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic c(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 0
    .parameter

    .prologue
    .line 113
    check-cast p1, Lcom/nianticproject/ingress/common/x/f;

    return-object p1
.end method
