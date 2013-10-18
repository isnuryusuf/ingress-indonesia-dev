.class final Lcom/nianticproject/ingress/f/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/f/d;

.field final synthetic b:Lcom/nianticproject/ingress/f/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/f/k;Lcom/nianticproject/ingress/f/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/nianticproject/ingress/f/m;->b:Lcom/nianticproject/ingress/f/k;

    iput-object p2, p0, Lcom/nianticproject/ingress/f/m;->a:Lcom/nianticproject/ingress/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/nianticproject/ingress/f/m;->b:Lcom/nianticproject/ingress/f/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/f/m;->a:Lcom/nianticproject/ingress/f/d;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/f/k;->a(Lcom/nianticproject/ingress/f/k;Lcom/nianticproject/ingress/f/d;)V

    .line 293
    return-void
.end method
