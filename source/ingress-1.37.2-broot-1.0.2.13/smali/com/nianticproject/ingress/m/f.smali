.class final Lcom/nianticproject/ingress/m/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog$Builder;

.field final synthetic b:Lcom/nianticproject/ingress/m/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/m/a;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/nianticproject/ingress/m/f;->b:Lcom/nianticproject/ingress/m/a;

    iput-object p2, p0, Lcom/nianticproject/ingress/m/f;->a:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nianticproject/ingress/m/f;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 164
    return-void
.end method
