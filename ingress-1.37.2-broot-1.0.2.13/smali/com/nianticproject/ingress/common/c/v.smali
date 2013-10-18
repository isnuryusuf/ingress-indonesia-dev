.class final Lcom/nianticproject/ingress/common/c/v;
.super Lcom/nianticproject/ingress/common/c/ah;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/ai;

.field final synthetic b:Lcom/nianticproject/ingress/common/c/g;

.field final synthetic c:Lcom/nianticproject/ingress/common/c/h;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/c/ai;Lcom/nianticproject/ingress/common/c/g;Lcom/nianticproject/ingress/common/c/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/v;->a:Lcom/nianticproject/ingress/common/c/ai;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/c/v;->b:Lcom/nianticproject/ingress/common/c/g;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/c/v;->c:Lcom/nianticproject/ingress/common/c/h;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "NotifyGroupVolumeChangedTask"

    return-object v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/v;->a:Lcom/nianticproject/ingress/common/c/ai;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/v;->b:Lcom/nianticproject/ingress/common/c/g;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/v;->c:Lcom/nianticproject/ingress/common/c/h;

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/g;Lcom/nianticproject/ingress/common/c/h;)V

    .line 55
    return-void
.end method
