.class final Lcom/nianticproject/ingress/common/f/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/nianticproject/ingress/common/f/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/f/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/nianticproject/ingress/common/f/e;->b:Lcom/nianticproject/ingress/common/f/a;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/f/e;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/e;->b:Lcom/nianticproject/ingress/common/f/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/e;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/f/a;->c(Lcom/nianticproject/ingress/common/f/a;Ljava/lang/Object;)V

    .line 349
    return-void
.end method
