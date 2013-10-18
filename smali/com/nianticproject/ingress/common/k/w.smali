.class public final Lcom/nianticproject/ingress/common/k/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ae;


# instance fields
.field private final a:Z

.field private final b:Lcom/nianticproject/ingress/common/af;

.field private final c:Lcom/nianticproject/ingress/common/x/f;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/af;)V
    .locals 1
    .parameter

    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    new-instance v0, Lcom/nianticproject/ingress/common/k/x;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/k/x;-><init>(Lcom/nianticproject/ingress/common/k/w;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/w;->c:Lcom/nianticproject/ingress/common/x/f;

    .line 811
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/k/w;->a:Z

    .line 812
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/af;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/w;->b:Lcom/nianticproject/ingress/common/af;

    .line 813
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/k/w;)Lcom/nianticproject/ingress/common/af;
    .locals 1
    .parameter

    .prologue
    .line 801
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/w;->b:Lcom/nianticproject/ingress/common/af;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 818
    :try_start_0
    const-string/jumbo v0, "GlobeResourceLoader.CreateResourcesTask"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 819
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/w;->a:Z

    invoke-static {}, Lcom/nianticproject/ingress/common/k/c;->a()V

    .line 823
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/w;->c:Lcom/nianticproject/ingress/common/x/f;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 827
    return-void

    .line 826
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
