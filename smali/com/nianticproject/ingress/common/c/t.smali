.class final Lcom/nianticproject/ingress/common/c/t;
.super Lcom/nianticproject/ingress/common/c/ah;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/ai;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/c/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/t;->a:Lcom/nianticproject/ingress/common/c/ai;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const-string/jumbo v0, "ResumeTask"

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/t;->a:Lcom/nianticproject/ingress/common/c/ai;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/c/ai;->b()V

    .line 238
    return-void
.end method
