.class final Lcom/nianticproject/ingress/m/b;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/m/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/m/a;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/nianticproject/ingress/m/b;->a:Lcom/nianticproject/ingress/m/a;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "AndroidDeviceSettingsPresenter:updateTeam"

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/m/b;->a:Lcom/nianticproject/ingress/m/a;

    invoke-static {v0, p2}, Lcom/nianticproject/ingress/m/a;->a(Lcom/nianticproject/ingress/m/a;Lcom/nianticproject/ingress/shared/ai;)V

    .line 80
    return-void
.end method
