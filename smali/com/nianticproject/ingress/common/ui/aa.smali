.class final Lcom/nianticproject/ingress/common/ui/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/z;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/z;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/aa;->a:Lcom/nianticproject/ingress/common/ui/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/aa;->a:Lcom/nianticproject/ingress/common/ui/z;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/z;->a(Lcom/nianticproject/ingress/common/ui/z;)Lcom/nianticproject/ingress/common/ui/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/f;->a(Lcom/badlogic/gdx/InputProcessor;)V

    .line 37
    return-void
.end method
