.class final Lcom/nianticproject/ingress/common/playerprofile/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/playerprofile/av;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/av;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/aw;->a:Lcom/nianticproject/ingress/common/playerprofile/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/aw;->b:Ljava/lang/Object;

    .line 37
    invoke-static {p1}, Lcom/nianticproject/ingress/common/playerprofile/av;->a(Lcom/nianticproject/ingress/common/playerprofile/av;)Lcom/google/a/a/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/playerprofile/aw;->c:J

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/aw;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Z
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/aw;->a:Lcom/nianticproject/ingress/common/playerprofile/av;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/av;->a(Lcom/nianticproject/ingress/common/playerprofile/av;)Lcom/google/a/a/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/playerprofile/aw;->c:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/aw;->a:Lcom/nianticproject/ingress/common/playerprofile/av;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/playerprofile/av;->b(Lcom/nianticproject/ingress/common/playerprofile/av;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
