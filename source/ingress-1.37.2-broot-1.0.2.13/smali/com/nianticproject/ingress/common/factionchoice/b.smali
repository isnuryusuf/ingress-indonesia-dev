.class public final Lcom/nianticproject/ingress/common/factionchoice/b;
.super Lcom/nianticproject/ingress/common/ui/b/s;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/ao;


# instance fields
.field private a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

.field private b:Lcom/nianticproject/ingress/common/missions/a/j;

.field private final c:Lcom/nianticproject/ingress/common/factionchoice/c;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/ad;Lcom/nianticproject/ingress/common/factionchoice/az;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 146
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nianticproject/ingress/common/ui/ac;

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/ui/b/s;-><init>(Lcom/nianticproject/ingress/common/ui/ad;[Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 147
    new-instance v0, Lcom/nianticproject/ingress/common/missions/a/j;

    const v1, -0x42b33333

    const v2, 0x3ecccccd

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/missions/a/j;-><init>(FF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/b;->b:Lcom/nianticproject/ingress/common/missions/a/j;

    .line 148
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/b;->b:Lcom/nianticproject/ingress/common/missions/a/j;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/a/j;->b(F)V

    .line 149
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/b;->b:Lcom/nianticproject/ingress/common/missions/a/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/a/j;->a()V

    .line 150
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/b;->b:Lcom/nianticproject/ingress/common/missions/a/j;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/factionchoice/b;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 152
    new-instance v0, Lcom/nianticproject/ingress/common/factionchoice/c;

    invoke-direct {v0, p2}, Lcom/nianticproject/ingress/common/factionchoice/c;-><init>(Lcom/nianticproject/ingress/common/factionchoice/az;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/b;->c:Lcom/nianticproject/ingress/common/factionchoice/c;

    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/b;->c:Lcom/nianticproject/ingress/common/factionchoice/c;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/factionchoice/b;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 154
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 158
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/b/s;->a()V

    .line 159
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/b;->c:Lcom/nianticproject/ingress/common/factionchoice/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/c;->a(Lcom/nianticproject/ingress/common/factionchoice/c;)Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/b;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    .line 160
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/b;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a()Lcom/nianticproject/ingress/common/ui/widget/an;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/an;->a(FZ)V

    .line 161
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/b;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a(Lcom/nianticproject/ingress/common/ui/widget/ao;)V

    .line 162
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/b;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a()Lcom/nianticproject/ingress/common/ui/widget/an;

    move-result-object v0

    const v1, 0x3f2a7efa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/an;->a(FZ)V

    .line 164
    return-void
.end method

.method public final a(F)V
    .locals 2
    .parameter

    .prologue
    .line 175
    const v0, 0x3f2a7efa

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/b;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a(Lcom/nianticproject/ingress/common/ui/widget/ao;)V

    .line 178
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/b;->c:Lcom/nianticproject/ingress/common/factionchoice/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/c;->b(Lcom/nianticproject/ingress/common/factionchoice/c;)V

    .line 180
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/b;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a(Lcom/nianticproject/ingress/common/ui/widget/ao;)V

    .line 169
    iput-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/b;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    .line 170
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/b/s;->b()V

    .line 171
    return-void
.end method
