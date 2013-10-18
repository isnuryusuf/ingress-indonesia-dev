.class final Lcom/nianticproject/ingress/l/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/l/f;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/l/f;)V
    .locals 0
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/nianticproject/ingress/l/n;->a:Lcom/nianticproject/ingress/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/nianticproject/ingress/l/n;->a:Lcom/nianticproject/ingress/l/f;

    invoke-static {v0}, Lcom/nianticproject/ingress/l/f;->a(Lcom/nianticproject/ingress/l/f;)V

    .line 618
    return-void
.end method
