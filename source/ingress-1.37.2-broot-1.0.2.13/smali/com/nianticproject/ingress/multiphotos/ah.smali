.class final Lcom/nianticproject/ingress/multiphotos/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nianticproject/ingress/multiphotos/ag;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/ag;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/ah;->b:Lcom/nianticproject/ingress/multiphotos/ag;

    iput-object p2, p0, Lcom/nianticproject/ingress/multiphotos/ah;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ah;->b:Lcom/nianticproject/ingress/multiphotos/ag;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/ag;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 147
    instance-of v1, v0, Lcom/nianticproject/ingress/multiphotos/an;

    if-eqz v1, :cond_0

    .line 148
    check-cast v0, Lcom/nianticproject/ingress/multiphotos/an;

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/ah;->a:Ljava/lang/String;

    invoke-interface {v0}, Lcom/nianticproject/ingress/multiphotos/an;->h()V

    .line 150
    :cond_0
    return-void
.end method
