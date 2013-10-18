.class final Lcom/nianticproject/ingress/ck;
.super Lcom/nianticproject/ingress/common/f/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/nianticproject/ingress/NemesisApplication;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/NemesisApplication;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/nianticproject/ingress/ck;->e:Lcom/nianticproject/ingress/NemesisApplication;

    iput-object p2, p0, Lcom/nianticproject/ingress/ck;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/nianticproject/ingress/ck;->b:J

    iput-object p5, p0, Lcom/nianticproject/ingress/ck;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/ck;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 293
    iget-object v0, p0, Lcom/nianticproject/ingress/ck;->e:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-static {v0}, Lcom/nianticproject/ingress/NemesisApplication;->a(Lcom/nianticproject/ingress/NemesisApplication;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/ck;->e:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-static {v0}, Lcom/nianticproject/ingress/NemesisApplication;->b(Lcom/nianticproject/ingress/NemesisApplication;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/ck;->e:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/NemesisApplication;->h()Lcom/google/analytics/tracking/android/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/ck;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/nianticproject/ingress/ck;->b:J

    iget-object v4, p0, Lcom/nianticproject/ingress/ck;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/nianticproject/ingress/ck;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/analytics/tracking/android/bf;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
