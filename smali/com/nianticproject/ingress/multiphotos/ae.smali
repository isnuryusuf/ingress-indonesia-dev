.class final Lcom/nianticproject/ingress/multiphotos/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/ae;->a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ae;->a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/ae;->a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;

    invoke-static {v1}, Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;->j(Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;->a(Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;Ljava/lang/String;)V

    .line 299
    return-void
.end method
