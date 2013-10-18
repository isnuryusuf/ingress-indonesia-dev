.class final Lcom/nianticproject/ingress/common/missions/fd;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/fc;

.field private final b:F


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/fc;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/fd;->a:Lcom/nianticproject/ingress/common/missions/fc;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    .line 189
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/nianticproject/ingress/common/missions/fd;->b:F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/fd;->a:Lcom/nianticproject/ingress/common/missions/fc;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/fc;->a(Lcom/nianticproject/ingress/common/missions/fc;)V

    .line 194
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/fd;->a:Lcom/nianticproject/ingress/common/missions/fc;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/fc;->b(Lcom/nianticproject/ingress/common/missions/fc;)V

    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/fd;->a:Lcom/nianticproject/ingress/common/missions/fc;

    const-string/jumbo v1, "Mission 1 (Exotic Matter) - Collect 1000 XM."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/fc;->a_(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/fd;->a:Lcom/nianticproject/ingress/common/missions/fc;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/fc;->n:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->af:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 200
    return-void
.end method
