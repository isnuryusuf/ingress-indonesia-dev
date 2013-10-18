.class final Lcom/nianticproject/ingress/common/c/au;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/a/d/u;

.field final b:Lcom/nianticproject/ingress/gameentity/components/ControllingTeam;

.field c:D


# direct methods
.method constructor <init>(Lcom/google/a/d/u;Lcom/google/a/d/u;Lcom/nianticproject/ingress/gameentity/components/ControllingTeam;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p2, p0, Lcom/nianticproject/ingress/common/c/au;->a:Lcom/google/a/d/u;

    .line 224
    iput-object p3, p0, Lcom/nianticproject/ingress/common/c/au;->b:Lcom/nianticproject/ingress/gameentity/components/ControllingTeam;

    .line 225
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/c/au;->a(Lcom/google/a/d/u;)V

    .line 226
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/d/u;)V
    .locals 2
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/au;->a:Lcom/google/a/d/u;

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/google/a/d/u;Lcom/google/a/d/u;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/c/au;->c:D

    .line 237
    return-void
.end method
