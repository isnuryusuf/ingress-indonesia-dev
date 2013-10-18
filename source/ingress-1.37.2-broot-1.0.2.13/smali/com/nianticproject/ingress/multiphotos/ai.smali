.class final Lcom/nianticproject/ingress/multiphotos/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nianticproject/ingress/multiphotos/ag;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/ag;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/ai;->b:Lcom/nianticproject/ingress/multiphotos/ag;

    iput-object p2, p0, Lcom/nianticproject/ingress/multiphotos/ai;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ai;->b:Lcom/nianticproject/ingress/multiphotos/ag;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/ag;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 156
    instance-of v1, v0, Lcom/nianticproject/ingress/multiphotos/an;

    if-eqz v1, :cond_0

    .line 157
    check-cast v0, Lcom/nianticproject/ingress/multiphotos/an;

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/ai;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/multiphotos/an;->d(Ljava/lang/String;)V

    .line 159
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
