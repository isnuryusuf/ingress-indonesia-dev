.class final Lcom/nianticproject/ingress/a/g;
.super Lcom/nianticproject/ingress/common/c/ah;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nianticproject/ingress/a/d;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/a/d;)V
    .locals 1
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/nianticproject/ingress/a/g;->b:Lcom/nianticproject/ingress/a/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/a/g;->a:Z

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    const-string/jumbo v0, "loadClipInAudioTask"

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/nianticproject/ingress/a/g;->b:Lcom/nianticproject/ingress/a/d;

    iget-boolean v1, p0, Lcom/nianticproject/ingress/a/g;->a:Z

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/a/d;->a(Lcom/nianticproject/ingress/a/d;Z)V

    .line 584
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/a/g;->a(I)I

    move-result v0

    return v0
.end method
