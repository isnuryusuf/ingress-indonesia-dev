.class public final Lcom/nianticproject/ingress/common/scanner/ae;
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
    .line 1560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1583
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/af;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/af;-><init>(Lcom/nianticproject/ingress/common/scanner/ae;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ae;->c:Lcom/nianticproject/ingress/common/x/f;

    .line 1561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/ae;->a:Z

    .line 1562
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/af;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ae;->b:Lcom/nianticproject/ingress/common/af;

    .line 1563
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/ae;)Lcom/nianticproject/ingress/common/af;
    .locals 1
    .parameter

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ae;->b:Lcom/nianticproject/ingress/common/af;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1568
    :try_start_0
    const-string/jumbo v0, "Scanner.CreateResourcesTask"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 1569
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/ae;->a:Z

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->d(Z)V

    .line 1573
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ae;->c:Lcom/nianticproject/ingress/common/x/f;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1576
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 1577
    return-void

    .line 1576
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
