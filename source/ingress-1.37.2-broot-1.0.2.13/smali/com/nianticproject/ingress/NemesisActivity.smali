.class public Lcom/nianticproject/ingress/NemesisActivity;
.super Lcom/badlogic/gdx/backends/android/AndroidApplication;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/c;
.implements Lcom/nianticproject/ingress/connectivity/b;
.implements Lcom/nianticproject/ingress/j/c;
.implements Lcom/nianticproject/ingress/n/r;
.implements Lcom/nianticproject/ingress/ui/d;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z


# instance fields
.field private final A:Lcom/nianticproject/ingress/common/ui/w;

.field private d:Lcom/nianticproject/ingress/NemesisApplication;

.field private e:Lcom/nianticproject/ingress/common/g/p;

.field private f:Lcom/nianticproject/ingress/common/i/a;

.field private g:Lcom/nianticproject/ingress/dj;

.field private h:Lcom/nianticproject/ingress/m/a;

.field private i:Lcom/nianticproject/ingress/common/ab;

.field private j:Lcom/nianticproject/ingress/common/ui/elements/bo;

.field private k:Lcom/nianticproject/ingress/AndroidComm;

.field private l:Lcom/nianticproject/ingress/common/d;

.field private m:J

.field private n:J

.field private o:Landroid/view/View;

.field private p:Z

.field private q:Lcom/nianticproject/ingress/ui/g;

.field private r:Lcom/nianticproject/ingress/cq;

.field private s:Lcom/nianticproject/ingress/cf;

.field private t:Lcom/nianticproject/ingress/ce;

.field private final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private v:Lcom/google/a/a/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/ba",
            "<",
            "Lcom/google/a/a/aj",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/ui/k;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Lcom/nianticproject/ingress/common/g/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/NemesisActivity;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/NemesisActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 152
    const-string/jumbo v0, "Nexus One"

    invoke-static {v0}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/NemesisActivity;->b:Ljava/util/Set;

    .line 155
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nianticproject/ingress/NemesisActivity;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;-><init>()V

    .line 233
    sget-object v0, Lcom/nianticproject/ingress/ce;->a:Lcom/nianticproject/ingress/ce;

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->t:Lcom/nianticproject/ingress/ce;

    .line 236
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 241
    iput-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->v:Lcom/google/a/a/ba;

    .line 243
    iput-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->w:Ljava/lang/String;

    .line 244
    iput-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->x:Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->y:Ljava/util/List;

    .line 1029
    new-instance v0, Lcom/nianticproject/ingress/ca;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/ca;-><init>(Lcom/nianticproject/ingress/NemesisActivity;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->z:Lcom/nianticproject/ingress/common/g/w;

    .line 1046
    new-instance v0, Lcom/nianticproject/ingress/cc;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/cc;-><init>(Lcom/nianticproject/ingress/NemesisActivity;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->A:Lcom/nianticproject/ingress/common/ui/w;

    return-void
.end method

.method private a(Landroid/content/Context;II)Landroid/app/AlertDialog;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 772
    const v4, 0x7f09003d

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/NemesisActivity;->a(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;I)Landroid/app/AlertDialog;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 750
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 751
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 752
    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 754
    new-instance v1, Lcom/nianticproject/ingress/bu;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/bu;-><init>(Lcom/nianticproject/ingress/NemesisActivity;)V

    .line 761
    if-eqz p5, :cond_1

    move-object v0, p5

    :goto_0
    invoke-virtual {v2, p4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 763
    if-eqz p5, :cond_0

    .line 764
    invoke-virtual {v2, p6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 766
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 767
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 761
    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/NemesisActivity;)Lcom/nianticproject/ingress/common/g/p;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/push/NemesisNotificationsService;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    .line 363
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/au;

    invoke-direct {v2, v0}, Lcom/nianticproject/ingress/au;-><init>(Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;)V

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 368
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 369
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/NemesisActivity;Lcom/nianticproject/ingress/common/o;)V
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 115
    :try_start_0
    const-string/jumbo v0, "NemesisActivity.startTheGame"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "startTheGame"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/u;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/nianticproject/ingress/NemesisActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "startTheGame"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->d:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/NemesisApplication;->e()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    new-instance v0, Lcom/nianticproject/ingress/m/a;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/m/a;-><init>(Lcom/nianticproject/ingress/NemesisActivity;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->h:Lcom/nianticproject/ingress/m/a;

    new-instance v9, Lcom/nianticproject/ingress/common/model/a/e;

    new-instance v0, Lcom/nianticproject/ingress/o/j;

    invoke-direct {v0}, Lcom/nianticproject/ingress/o/j;-><init>()V

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->d:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->f()Lcom/nianticproject/ingress/common/u/b;

    move-result-object v1

    invoke-static {}, Lcom/nianticproject/ingress/ec;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v0, v1, v2}, Lcom/nianticproject/ingress/common/model/a/e;-><init>(Lcom/nianticproject/ingress/common/model/a/h;Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->d:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->f()Lcom/nianticproject/ingress/common/u/b;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    invoke-static {}, Lcom/nianticproject/ingress/ec;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticproject/ingress/NemesisActivity;->d:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/NemesisApplication;->k()Lcom/nianticproject/ingress/common/q/b/r;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticproject/ingress/NemesisActivity;->d:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v5}, Lcom/nianticproject/ingress/NemesisApplication;->i()Lcom/nianticproject/ingress/common/j/av;

    move-result-object v5

    new-instance v6, Lcom/nianticproject/ingress/d/a;

    invoke-direct {v6, p0}, Lcom/nianticproject/ingress/d/a;-><init>(Lcom/nianticproject/ingress/NemesisActivity;)V

    invoke-static {}, Lcom/nianticproject/ingress/ec;->d()Z

    move-result v7

    iget-object v8, p0, Lcom/nianticproject/ingress/NemesisActivity;->h:Lcom/nianticproject/ingress/m/a;

    iget-object v10, p0, Lcom/nianticproject/ingress/NemesisActivity;->d:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v10}, Lcom/nianticproject/ingress/NemesisApplication;->j()Lcom/nianticproject/ingress/common/c/ak;

    move-result-object v10

    new-instance v12, Lcom/nianticproject/ingress/c/b;

    invoke-direct {v12}, Lcom/nianticproject/ingress/c/b;-><init>()V

    move-object v11, p1

    invoke-virtual/range {v0 .. v12}, Lcom/nianticproject/ingress/common/g/p;->a(Lcom/nianticproject/ingress/common/u/b;Lcom/nianticproject/ingress/common/a;Ljava/lang/String;Lcom/nianticproject/ingress/common/q/b/r;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/g/x;ZLcom/nianticproject/ingress/common/v/ah;Lcom/nianticproject/ingress/common/model/a/e;Lcom/nianticproject/ingress/common/c/ak;Lcom/nianticproject/ingress/common/o;Lcom/nianticproject/ingress/shared/a/b;)V

    const-string/jumbo v0, "Gdx.input.setInputProcessor"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/t;->a()Lcom/badlogic/gdx/InputProcessor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->r:Lcom/nianticproject/ingress/cq;

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->j()Lcom/nianticproject/ingress/common/r;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/cq;->a(Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/model/k;)V

    const-string/jumbo v0, "AndroidDeviceSettingsPresenter.init"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->h:Lcom/nianticproject/ingress/m/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/g/p;->d()Lcom/nianticproject/ingress/common/g/e;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/g/p;->j()Lcom/nianticproject/ingress/common/r;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/g/p;->k()Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v5

    iget-object v6, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v6}, Lcom/nianticproject/ingress/common/g/p;->i()Lcom/nianticproject/ingress/common/u/q;

    move-result-object v6

    iget-object v7, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v7}, Lcom/nianticproject/ingress/common/g/p;->o()Lcom/nianticproject/ingress/common/model/d;

    move-result-object v7

    iget-object v8, p0, Lcom/nianticproject/ingress/NemesisActivity;->r:Lcom/nianticproject/ingress/cq;

    iget-object v9, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v9}, Lcom/nianticproject/ingress/common/g/p;->E()Lcom/nianticproject/ingress/common/playerprofile/ax;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/nianticproject/ingress/m/a;->a(Lcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/model/d;Lcom/nianticproject/ingress/cq;Lcom/nianticproject/ingress/common/playerprofile/ax;)V

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const-string/jumbo v0, "NemesisActivity.worldInitHelper"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->l:Lcom/nianticproject/ingress/common/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->l:Lcom/nianticproject/ingress/common/d;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/d;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->l:Lcom/nianticproject/ingress/common/d;

    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/d;

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/d;-><init>(Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/model/k;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->l:Lcom/nianticproject/ingress/common/d;

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->l:Lcom/nianticproject/ingress/common/d;

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->h()Lcom/nianticproject/ingress/common/w/t;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/o/c;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/o/c;-><init>(Lcom/nianticproject/ingress/NemesisActivity;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/t;->a(Lcom/nianticproject/ingress/common/w/k;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->A:Lcom/nianticproject/ingress/common/ui/w;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->a(Lcom/nianticproject/ingress/common/ui/w;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->k()Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v1

    invoke-static {}, Lcom/nianticproject/ingress/ec;->d()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/nianticproject/ingress/o/a/b;->a:Lcom/nianticproject/ingress/o/a/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    new-instance v2, Lcom/nianticproject/ingress/common/ui/elements/bo;

    const/high16 v3, 0x4230

    invoke-static {v3}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v3, v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/bo;-><init>(IZLcom/nianticproject/ingress/common/scanner/k;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->j:Lcom/nianticproject/ingress/common/ui/elements/bo;

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->j:Lcom/nianticproject/ingress/common/ui/elements/bo;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    invoke-static {}, Lcom/nianticproject/ingress/o/a/c;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/p;->a(Ljava/util/Collection;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/g/p;->b(Z)V

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->G()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->b(Z)V

    const-string/jumbo v0, "post-handshake-actions"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/nianticproject/ingress/common/o;->d:Lcom/nianticproject/ingress/common/p;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/k;->n()Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    move-result-object v3

    sget-object v1, Lcom/nianticproject/ingress/bt;->c:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/p;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Don\'t know how to handle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/p;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    :try_start_1
    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->b()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x1

    move v13, v1

    move v1, v0

    move v0, v13

    :goto_2
    if-eqz v1, :cond_3

    new-instance v1, Lcom/nianticproject/ingress/bo;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/nianticproject/ingress/bo;-><init>(Lcom/nianticproject/ingress/NemesisActivity;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;Z)V

    invoke-interface {v2, v1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    :cond_3
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->z:Lcom/nianticproject/ingress/common/g/w;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/g/p;->a(Lcom/nianticproject/ingress/common/g/w;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->p()Lcom/nianticproject/ingress/common/ui/o;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->f:Lcom/nianticproject/ingress/common/i/a;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/i/a;->a(Lcom/badlogic/gdx/ApplicationListener;)V

    new-instance v0, Lcom/nianticproject/ingress/bp;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/bp;-><init>(Lcom/nianticproject/ingress/NemesisActivity;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/nianticproject/ingress/NemesisActivity;->b:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    :try_start_2
    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->b()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_3
    const/4 v1, 0x0

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/nianticproject/ingress/NemesisActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/NemesisActivity;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/NemesisActivity;)Lcom/nianticproject/ingress/AndroidComm;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    return-object v0
.end method

.method private b(Z)V
    .locals 5
    .parameter

    .prologue
    .line 937
    :try_start_0
    const-string/jumbo v0, "NemesisActivity.worldResetHelper"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->l:Lcom/nianticproject/ingress/common/d;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->l:Lcom/nianticproject/ingress/common/d;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/d;->b()V

    .line 941
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->l:Lcom/nianticproject/ingress/common/d;

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v1

    .line 946
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->p()Lcom/nianticproject/ingress/common/ui/o;

    .line 947
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->d:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/NemesisApplication;->j()Lcom/nianticproject/ingress/common/c/ak;

    move-result-object v2

    .line 949
    new-instance v0, Lcom/nianticproject/ingress/common/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    invoke-direct {v0, v3, v1}, Lcom/nianticproject/ingress/common/d;-><init>(Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/model/k;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->l:Lcom/nianticproject/ingress/common/d;

    .line 951
    if-eqz p1, :cond_4

    sget-object v0, Lcom/nianticproject/ingress/common/b;->b:Lcom/nianticproject/ingress/common/b;

    .line 954
    :goto_0
    if-eqz p1, :cond_1

    .line 955
    new-instance v3, Lcom/nianticproject/ingress/by;

    invoke-direct {v3, p0, v0}, Lcom/nianticproject/ingress/by;-><init>(Lcom/nianticproject/ingress/NemesisActivity;Lcom/nianticproject/ingress/common/b;)V

    .line 963
    :cond_1
    iget-object v3, p0, Lcom/nianticproject/ingress/NemesisActivity;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/nianticproject/ingress/bz;

    invoke-direct {v4, p0, v0}, Lcom/nianticproject/ingress/bz;-><init>(Lcom/nianticproject/ingress/NemesisActivity;Lcom/nianticproject/ingress/common/b;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 971
    const/4 v0, 0x0

    .line 972
    iget-object v3, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    if-eqz v3, :cond_2

    .line 976
    iget-object v3, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    iget-object v4, p0, Lcom/nianticproject/ingress/NemesisActivity;->d:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/NemesisApplication;->g()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nianticproject/ingress/common/ab;->b(Lcom/nianticproject/ingress/common/aa;)V

    .line 980
    iget-object v3, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    iget-object v4, p0, Lcom/nianticproject/ingress/NemesisActivity;->r:Lcom/nianticproject/ingress/cq;

    invoke-virtual {v3, v4}, Lcom/nianticproject/ingress/common/ab;->b(Lcom/nianticproject/ingress/common/aa;)V

    .line 986
    iget-object v3, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/ab;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 987
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ab;->c()V

    .line 988
    const/4 v0, 0x1

    .line 994
    :cond_2
    iget-object v3, p0, Lcom/nianticproject/ingress/NemesisActivity;->r:Lcom/nianticproject/ingress/cq;

    iget-object v4, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/g/p;->j()Lcom/nianticproject/ingress/common/r;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/nianticproject/ingress/cq;->a(Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/model/k;)V

    .line 1000
    new-instance v1, Lcom/nianticproject/ingress/common/ab;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/ab;-><init>()V

    iput-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    .line 1002
    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ab;->a(Lcom/nianticproject/ingress/common/aa;)V

    .line 1004
    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/g/p;->q()Lcom/nianticproject/ingress/common/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ab;->a(Lcom/nianticproject/ingress/common/aa;)V

    .line 1006
    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/g/p;->o()Lcom/nianticproject/ingress/common/model/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ab;->a(Lcom/nianticproject/ingress/common/aa;)V

    .line 1008
    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/g/p;->h()Lcom/nianticproject/ingress/common/w/t;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ab;->a(Lcom/nianticproject/ingress/common/aa;)V

    .line 1010
    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->h:Lcom/nianticproject/ingress/m/a;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ab;->a(Lcom/nianticproject/ingress/common/aa;)V

    .line 1012
    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->l:Lcom/nianticproject/ingress/common/d;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ab;->a(Lcom/nianticproject/ingress/common/aa;)V

    .line 1016
    if-eqz v0, :cond_3

    .line 1017
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ab;->f_()V

    .line 1021
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->d:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/NemesisApplication;->g()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ab;->a(Lcom/nianticproject/ingress/common/aa;)V

    .line 1023
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->r:Lcom/nianticproject/ingress/cq;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ab;->a(Lcom/nianticproject/ingress/common/aa;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 1026
    return-void

    .line 951
    :cond_4
    :try_start_1
    sget-object v0, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1025
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/NemesisActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/NemesisActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->o:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 444
    :try_start_0
    const-string/jumbo v0, "NemesisActivity.onResumeWithFocus"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 446
    sget-object v0, Lcom/nianticproject/ingress/ce;->c:Lcom/nianticproject/ingress/ce;

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->t:Lcom/nianticproject/ingress/ce;

    .line 448
    sget-object v0, Lcom/nianticproject/ingress/NemesisActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "onResumeWithFocus: state=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/NemesisActivity;->s:Lcom/nianticproject/ingress/cf;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->s:Lcom/nianticproject/ingress/cf;

    sget-object v1, Lcom/nianticproject/ingress/cf;->a:Lcom/nianticproject/ingress/cf;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    sget-object v0, Lcom/nianticproject/ingress/NemesisActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Forcing account selection b/c isAccountSelectionRequiredBeforeGainStart is true in prefs."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 469
    sget-object v0, Lcom/nianticproject/ingress/cf;->a:Lcom/nianticproject/ingress/cf;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->a(Lcom/nianticproject/ingress/cf;)V

    .line 474
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/o/a/a;->h:Lcom/nianticproject/ingress/o/a/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/a/a;->a()Z

    move-result v0

    .line 475
    invoke-static {v0}, Lcom/nianticproject/ingress/common/f/a;->a(Z)V

    .line 476
    invoke-static {v0}, Lcom/nianticproject/ingress/common/x/i;->a(Z)V

    .line 477
    invoke-static {}, Lcom/nianticproject/ingress/o/e;->a()V

    .line 478
    sget-object v0, Lcom/nianticproject/ingress/bt;->b:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->s:Lcom/nianticproject/ingress/cf;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/cf;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 499
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unimplemented state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->s:Lcom/nianticproject/ingress/cf;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 480
    :pswitch_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticproject/ingress/AccountsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/NemesisActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 504
    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/push/NemesisNotificationsService;->a(Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 507
    return-void

    .line 486
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/nianticproject/ingress/NemesisActivity;->j()V

    goto :goto_0

    .line 494
    :pswitch_2
    invoke-direct {p0}, Lcom/nianticproject/ingress/NemesisActivity;->g()V

    .line 495
    invoke-direct {p0}, Lcom/nianticproject/ingress/NemesisActivity;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private g()V
    .locals 6

    .prologue
    .line 862
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 864
    iget-wide v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->n:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 883
    :goto_0
    return-void

    .line 868
    :cond_0
    iput-wide v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->n:J

    .line 870
    new-instance v2, Lcom/nianticproject/ingress/bx;

    invoke-direct {v2, p0, v0, v1}, Lcom/nianticproject/ingress/bx;-><init>(Lcom/nianticproject/ingress/NemesisActivity;J)V

    invoke-virtual {v2}, Lcom/nianticproject/ingress/bx;->e()Lcom/nianticproject/ingress/common/f/a;

    goto :goto_0
.end method

.method private h()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1102
    :try_start_0
    const-string/jumbo v0, "NemesisActivity.onGameResume"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 1104
    invoke-static {p0}, Lcom/nianticproject/ingress/o/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    invoke-static {p0}, Lcom/nianticproject/ingress/o/a;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 1150
    :goto_0
    return-void

    .line 1114
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/nianticproject/ingress/push/NemesisNotificationsService;->a(Landroid/content/Context;)V

    .line 1117
    invoke-static {p0}, Lcom/nianticproject/ingress/service/CommService;->a(Landroid/content/Context;)V

    .line 1120
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

## Change from v1
    if-nez v1, :cond_1

    const-string/jumbo v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1123
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mock_location"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

## Change 0 ke 1, akan membuat false detek "allow mock location"  -- file NemesisActivity.smali
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v7

    :goto_2
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/nianticproject/ingress/ec;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nianticproject/ingress/o/a/a;->a:Lcom/nianticproject/ingress/o/a/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v7

    :goto_3
    if-eqz v0, :cond_d

    const v2, 0x7f09001d

    const v3, 0x7f09001e

    const v4, 0x7f090020

    new-instance v5, Lcom/nianticproject/ingress/bw;

    invoke-direct {v5, p0, v1}, Lcom/nianticproject/ingress/bw;-><init>(Lcom/nianticproject/ingress/NemesisActivity;Landroid/content/Intent;)V

    const v6, 0x7f090021

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/NemesisActivity;->a(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;I)Landroid/app/AlertDialog;

    .line 1125
    :cond_3
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1126
    iget-wide v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->m:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 1127
    iput-wide v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->m:J

    .line 1128
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->f()Lcom/nianticproject/ingress/common/h/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/h/l;->a(Lcom/google/a/a/ba;)V

    .line 1131
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->j:Lcom/nianticproject/ingress/common/ui/elements/bo;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/AndroidComm;->a(Lcom/nianticproject/ingress/common/ui/elements/bo;)V

    .line 1133
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->d:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/NemesisApplication;->l()Lcom/nianticproject/ingress/connectivity/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/connectivity/a;->a(Lcom/nianticproject/ingress/connectivity/b;)Z

    move-result v0

    .line 1134
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->a(Z)V

    .line 1136
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    if-eqz v0, :cond_5

    .line 1137
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ab;->f_()V

    .line 1140
    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1141
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->c(Ljava/lang/String;)V

    .line 1142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->w:Ljava/lang/String;

    .line 1144
    :cond_6
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1145
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->x:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->b(Ljava/lang/String;)V

    .line 1146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->x:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1149
    :cond_7
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0

    .line 1120
    :cond_8
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/ec;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v2, 0x7f090040

    const v3, 0x7f090041

    const v4, 0x7f090044

    new-instance v5, Lcom/nianticproject/ingress/bv;

    invoke-direct {v5, p0, v0}, Lcom/nianticproject/ingress/bv;-><init>(Lcom/nianticproject/ingress/NemesisActivity;Landroid/content/Intent;)V

    const v6, 0x7f090045

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/NemesisActivity;->a(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;I)Landroid/app/AlertDialog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1149
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 1120
    :cond_9
    const v1, 0x7f090040

    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_a

    const v0, 0x7f090042

    :goto_5
    invoke-direct {p0, p0, v1, v0}, Lcom/nianticproject/ingress/NemesisActivity;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_a
    const v0, 0x7f090043

    goto :goto_5

    :cond_b
    move v0, v8

    .line 1123
    goto/16 :goto_2

    :cond_c
    move v0, v8

    goto/16 :goto_3

    :cond_d
    const v0, 0x7f09001d

    const v1, 0x7f09001f

    invoke-direct {p0, p0, v0, v1}, Lcom/nianticproject/ingress/NemesisActivity;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4
.end method

.method private i()Lcom/nianticproject/ingress/dj;
    .locals 4

    .prologue
    .line 1310
    :try_start_0
    const-string/jumbo v0, "NemesisActivity.createPregameAppListener"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 1312
    new-instance v0, Lcom/nianticproject/ingress/bq;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/bq;-><init>(Lcom/nianticproject/ingress/NemesisActivity;)V

    .line 1327
    new-instance v1, Lcom/nianticproject/ingress/dj;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisActivity;->getSupportFragmentManager()Landroid/support/v4/app/j;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/NemesisActivity;->d:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/NemesisApplication;->l()Lcom/nianticproject/ingress/connectivity/a;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/nianticproject/ingress/dj;-><init>(Landroid/app/Activity;Landroid/support/v4/app/j;Lcom/nianticproject/ingress/connectivity/a;Lcom/google/a/a/ba;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 1340
    :try_start_0
    const-string/jumbo v0, "NemesisActivity.onPregameResume"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 1342
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->d:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/NemesisApplication;->g()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/c/e;->f_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1344
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 1345
    return-void

    .line 1344
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 543
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 1431
    return-void
.end method

.method public final a(IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1443
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisActivity;->getSupportFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0, p3, p0}, Lcom/nianticproject/ingress/j/a;->a(Landroid/support/v4/app/j;Ljava/lang/String;Lcom/nianticproject/ingress/j/c;)V

    .line 1444
    return-void
.end method

.method public final a(Lcom/google/a/a/ba;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/ba",
            "<",
            "Lcom/google/a/a/aj",
            "<[B>;>;)V"
        }
    .end annotation

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->v:Lcom/google/a/a/ba;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->v:Lcom/google/a/a/ba;

    invoke-static {}, Lcom/google/a/a/aj;->d()Lcom/google/a/a/aj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/a/ba;->a(Ljava/lang/Object;)V

    .line 1398
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/NemesisActivity;->v:Lcom/google/a/a/ba;

    .line 1399
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1400
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/NemesisActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1401
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/cf;)V
    .locals 2
    .parameter

    .prologue
    .line 1366
    const-string/jumbo v0, "setState"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 1367
    iput-object p1, p0, Lcom/nianticproject/ingress/NemesisActivity;->s:Lcom/nianticproject/ingress/cf;

    .line 1368
    sget-object v0, Lcom/nianticproject/ingress/bt;->b:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->s:Lcom/nianticproject/ingress/cf;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/cf;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1377
    :goto_0
    return-void

    .line 1371
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->g:Lcom/nianticproject/ingress/dj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/dj;->b()V

    .line 1372
    invoke-direct {p0}, Lcom/nianticproject/ingress/NemesisActivity;->j()V

    goto :goto_0

    .line 1376
    :pswitch_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/NemesisActivity;->h()V

    goto :goto_0

    .line 1368
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/j;)V
    .locals 11
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1471
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    if-nez v0, :cond_1

    .line 1539
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v9

    .line 1476
    if-eqz v9, :cond_0

    .line 1480
    invoke-virtual {v9}, Lcom/nianticproject/ingress/common/ui/t;->b()Lcom/nianticproject/ingress/common/ui/m;

    move-result-object v0

    .line 1481
    invoke-virtual {v9}, Lcom/nianticproject/ingress/common/ui/t;->b()Lcom/nianticproject/ingress/common/ui/m;

    move-result-object v1

    instance-of v10, v1, Lcom/nianticproject/ingress/common/scanner/i;

    .line 1483
    if-eqz v10, :cond_2

    invoke-interface {p1}, Lcom/nianticproject/ingress/common/scanner/j;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/i;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/i;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1489
    :goto_1
    if-eqz v0, :cond_3

    .line 1494
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    invoke-virtual {v0, v7}, Lcom/nianticproject/ingress/AndroidComm;->c(Z)V

    goto :goto_0

    :cond_2
    move v0, v7

    .line 1483
    goto :goto_1

    .line 1499
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    invoke-interface {p1}, Lcom/nianticproject/ingress/common/scanner/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/gameentity/a;->a(Lcom/nianticproject/ingress/common/model/k;Ljava/lang/String;)Lcom/nianticproject/ingress/common/inventory/ui/q;

    move-result-object v0

    .line 1501
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v5

    .line 1505
    :goto_2
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/i;

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->k()Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/g/p;->j()Lcom/nianticproject/ingress/common/r;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/g/p;->f()Lcom/nianticproject/ingress/common/h/l;

    move-result-object v3

    iget-object v4, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v4

    iget-object v8, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/nianticproject/ingress/common/scanner/i;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/j;ZLcom/nianticproject/ingress/common/a;)V

    .line 1515
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/bs;

    invoke-direct {v2, p0, v10, v9, v0}, Lcom/nianticproject/ingress/bs;-><init>(Lcom/nianticproject/ingress/NemesisActivity;ZLcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/ui/m;)V

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    goto :goto_0

    .line 1501
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1423
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisActivity;->getSupportFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/j/a;->a(Landroid/support/v4/app/j;Ljava/lang/String;)V

    .line 1427
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1091
    if-eqz p1, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->q:Lcom/nianticproject/ingress/ui/g;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/g;->b()V

    .line 1096
    :goto_0
    return-void

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->q:Lcom/nianticproject/ingress/ui/g;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/g;->a()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1077
    iget-boolean v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->p:Z

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    invoke-virtual {v0, v2, v1}, Lcom/nianticproject/ingress/AndroidComm;->a(IZ)V

    .line 1082
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/AndroidComm;->b(Z)V

    .line 1085
    iput-boolean v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->p:Z

    .line 1087
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 1435
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/AndroidComm;->b(Z)V

    .line 1454
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/AndroidComm;->a(Ljava/lang/String;I)V

    .line 1456
    :cond_0
    return-void
.end method

.method public final c()Lcom/nianticproject/ingress/n/q;
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->g:Lcom/nianticproject/ingress/dj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/dj;->a()Lcom/nianticproject/ingress/n/q;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)V
    .locals 0
    .parameter

    .prologue
    .line 1439
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v6

    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/ao;

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->D()Lcom/nianticproject/ingress/common/j/av;

    move-result-object v2

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->E()Lcom/nianticproject/ingress/common/playerprofile/ax;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/playerprofile/ao;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/playerprofile/ax;Lcom/nianticproject/ingress/common/inventory/i;Z)V

    invoke-virtual {v6, v0}, Lcom/nianticproject/ingress/common/ui/t;->b(Lcom/nianticproject/ingress/common/ui/m;)Lcom/nianticproject/ingress/common/ui/m;

    .line 1463
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 1544
    const-string/jumbo v0, "Comm"

    const-string/jumbo v1, "open"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 1550
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1552
    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/AndroidComm;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1553
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 671
    packed-switch p1, :pswitch_data_0

    .line 740
    :pswitch_0
    :try_start_0
    const-string/jumbo v0, "UnhandledRequestCode"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    :cond_0
    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 744
    :goto_1
    return-void

    .line 673
    :pswitch_1
    :try_start_1
    const-string/jumbo v0, "RequestSelectAccount"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 674
    sget-object v0, Lcom/nianticproject/ingress/NemesisActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "onActivityResult(request=REQUEST_SELECT_ACCOUNT result=%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    if-eq p2, v5, :cond_1

    .line 676
    sget-object v0, Lcom/nianticproject/ingress/NemesisActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "resultCode != RESULT_OK: finishing"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_1

    .line 680
    :cond_1
    :try_start_2
    invoke-static {p3}, Lcom/nianticproject/ingress/o/a;->a(Landroid/content/Intent;)Landroid/accounts/Account;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 682
    :cond_2
    sget-object v0, Lcom/nianticproject/ingress/NemesisActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "null or empty account name: finishing"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 743
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_1

    .line 686
    :cond_3
    :try_start_3
    sget-object v1, Lcom/nianticproject/ingress/NemesisActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "resultCode=RESULT_OK: saving account"

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 687
    invoke-static {v0}, Lcom/nianticproject/ingress/o/a;->a(Landroid/accounts/Account;)V

    .line 689
    sget-object v0, Lcom/nianticproject/ingress/cf;->b:Lcom/nianticproject/ingress/cf;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->a(Lcom/nianticproject/ingress/cf;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 743
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 693
    :pswitch_2
    :try_start_4
    const-string/jumbo v0, "RequestCodePasscode"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->i()Lcom/nianticproject/ingress/common/u/q;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/PasscodeActivity;->a(Lcom/nianticproject/ingress/common/u/h;Lcom/nianticproject/ingress/common/a;)Lcom/nianticproject/ingress/shared/promotioncodes/Reward;

    goto :goto_0

    .line 705
    :pswitch_3
    const-string/jumbo v0, "RequestPickNotificationSound"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 706
    if-ne p2, v5, :cond_0

    .line 707
    const-string/jumbo v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 709
    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->h:Lcom/nianticproject/ingress/m/a;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/m/a;->a(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 714
    :pswitch_4
    const-string/jumbo v0, "RequestCamera"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 715
    if-ne p2, v5, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->v:Lcom/google/a/a/ba;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/a/aj;->b(Ljava/lang/Object;)Lcom/google/a/a/aj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/a/ba;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->v:Lcom/google/a/a/ba;

    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->v:Lcom/google/a/a/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->v:Lcom/google/a/a/ba;

    invoke-static {}, Lcom/google/a/a/aj;->d()Lcom/google/a/a/aj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/a/ba;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->v:Lcom/google/a/a/ba;

    goto/16 :goto_0

    .line 719
    :pswitch_5
    const-string/jumbo v0, "RequestMoreInfo"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 720
    if-eqz p3, :cond_0

    .line 721
    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/ao;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 723
    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 724
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 729
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 730
    iput-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->w:Ljava/lang/String;

    goto/16 :goto_0

    .line 731
    :cond_5
    const-string/jumbo v2, "android.intent.action.CALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iput-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->x:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 671
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter

    .prologue
    .line 266
    instance-of v0, p1, Lcom/nianticproject/ingress/ui/k;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    check-cast p1, Lcom/nianticproject/ingress/ui/k;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/AndroidComm;->a(Lcom/nianticproject/ingress/ui/k;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/ui/k;

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 613
    :try_start_0
    const-string/jumbo v0, "NemesisActivity.onBackPressed"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 614
    sget-object v0, Lcom/nianticproject/ingress/bt;->b:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->s:Lcom/nianticproject/ingress/cf;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/cf;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 660
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 665
    :goto_1
    return-void

    .line 620
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->g:Lcom/nianticproject/ingress/dj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/dj;->d()V

    .line 622
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onBackPressed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 664
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 630
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/AndroidComm;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->e:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/t;->b()Lcom/nianticproject/ingress/common/ui/m;

    move-result-object v0

    instance-of v0, v0, Lcom/nianticproject/ingress/common/scanner/k;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/AndroidComm;->c(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 664
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_1

    .line 636
    :cond_0
    :try_start_3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/nianticproject/ingress/bm;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/bm;-><init>(Lcom/nianticproject/ingress/NemesisActivity;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 614
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    invoke-static {p0}, La;->ae(Lcom/nianticproject/ingress/NemesisActivity;)V

    .line 278
    :try_start_0
    const-string/jumbo v0, "NemesisActivity.onCreate"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 279
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onCreate(Landroid/os/Bundle;)V

    .line 280
    sget-object v0, Lcom/nianticproject/ingress/NemesisActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "onCreate: clientVersion=%s baseUrl=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/nianticproject/ingress/ec;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/nianticproject/ingress/ec;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 287
    :try_start_1
    const-string/jumbo v0, "setContentView"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 288
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->setContentView(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 290
    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 292
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->d:Lcom/nianticproject/ingress/NemesisApplication;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 293
    :try_start_3
    const-string/jumbo v0, "NemesisActivity.initAndroidViews"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    const v0, 0x7f080076

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->o:Landroid/view/View;

    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/AndroidComm;

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/AndroidComm;->a(Z)V

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/ui/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/AndroidComm;->a(Lcom/nianticproject/ingress/ui/k;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 355
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 290
    :catchall_2
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 293
    :cond_0
    :try_start_6
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/AndroidComm;->a(Lcom/nianticproject/ingress/common/c;)V

    new-instance v0, Lcom/nianticproject/ingress/ui/g;

    const v1, 0x7f080075

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/NemesisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/ui/g;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->q:Lcom/nianticproject/ingress/ui/g;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 298
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->setVolumeControlStream(I)V

    .line 301
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    .line 302
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL20:Z

    .line 304
    invoke-direct {p0}, Lcom/nianticproject/ingress/NemesisActivity;->i()Lcom/nianticproject/ingress/dj;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->g:Lcom/nianticproject/ingress/dj;

    .line 305
    new-instance v1, Lcom/nianticproject/ingress/common/i/a;

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->g:Lcom/nianticproject/ingress/dj;

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/i/a;-><init>(Lcom/badlogic/gdx/ApplicationListener;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->f:Lcom/nianticproject/ingress/common/i/a;

    .line 309
    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->f:Lcom/nianticproject/ingress/common/i/a;

    invoke-virtual {p0, v1, v0}, Lcom/nianticproject/ingress/NemesisActivity;->initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;

    move-result-object v1

    .line 313
    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL20:Z

    if-eqz v0, :cond_1

    .line 314
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 318
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/o/a;->d()Lcom/nianticproject/ingress/o/b;

    move-result-object v0

    .line 319
    sget-object v1, Lcom/nianticproject/ingress/bt;->a:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 331
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unimplemented accountStatus="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/cf;->a:Lcom/nianticproject/ingress/cf;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->a(Lcom/nianticproject/ingress/cf;)V

    .line 334
    :goto_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 335
    const-string/jumbo v1, "com.nianticproject.ingress.ACTION_OPEN_COMM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->p:Z

    .line 341
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->setIntent(Landroid/content/Intent;)V

    .line 350
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->a(Landroid/content/Intent;)V

    .line 352
    new-instance v0, Lcom/nianticproject/ingress/cq;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/cq;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->r:Lcom/nianticproject/ingress/cq;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 355
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 356
    return-void

    .line 327
    :pswitch_1
    :try_start_8
    sget-object v0, Lcom/nianticproject/ingress/cf;->b:Lcom/nianticproject/ingress/cf;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->a(Lcom/nianticproject/ingress/cf;)V

    goto :goto_1

    .line 342
    :cond_3
    const-string/jumbo v1, "com.nianticproject.ingress.ACTION_ACHIEVEMENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->setIntent(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->k:Lcom/nianticproject/ingress/AndroidComm;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/AndroidComm;->b(Lcom/nianticproject/ingress/common/c;)V

    .line 596
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onDestroy()V

    .line 597
    sget-boolean v0, Lcom/nianticproject/ingress/NemesisActivity;->c:Z

    if-eqz v0, :cond_0

    .line 604
    invoke-static {}, Lcom/nianticproject/ingress/common/a/c;->b()V

    .line 606
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 608
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    .line 374
    :try_start_0
    const-string/jumbo v0, "NemesisActivity.onNewIntent"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 379
    const-string/jumbo v1, "com.nianticproject.ingress.ACTION_OPEN_COMM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->p:Z

    .line 391
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/NemesisActivity;->a(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 394
    return-void

    .line 382
    :cond_1
    :try_start_1
    const-string/jumbo v1, "com.nianticproject.ingress.ACTION_ACHIEVEMENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    const-string/jumbo v1, "com.nianticproject.ingress.ACTION_QUIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 386
    :cond_2
    :try_start_2
    const-string/jumbo v1, "com.nianticproject.ingress.ACTION_HARD_RESTART"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nianticproject/ingress/NemesisActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x800

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 388
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    invoke-static {p0}, La;->o(Lcom/nianticproject/ingress/NemesisActivity;)V

    .line 548
    :try_start_0
    const-string/jumbo v0, "NemesisActivity.onPause"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 549
    sget-object v0, Lcom/nianticproject/ingress/NemesisActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "onPause: state=%s lifecycle=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/NemesisActivity;->s:Lcom/nianticproject/ingress/cf;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nianticproject/ingress/NemesisActivity;->t:Lcom/nianticproject/ingress/ce;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onPause()V

    .line 552
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->t:Lcom/nianticproject/ingress/ce;

    sget-object v1, Lcom/nianticproject/ingress/ce;->c:Lcom/nianticproject/ingress/ce;

    if-ne v0, v1, :cond_1

    .line 553
    invoke-static {p0}, Lcom/nianticproject/ingress/service/CommService;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/nianticproject/ingress/bt;->b:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->s:Lcom/nianticproject/ingress/cf;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/cf;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unimplemented state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/NemesisActivity;->s:Lcom/nianticproject/ingress/cf;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 553
    :pswitch_0
    :try_start_1
    const-string/jumbo v0, "NemesisActivity.onPregamePause"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->d:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/NemesisApplication;->g()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/c/e;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_0
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->i:Lcom/nianticproject/ingress/common/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ab;->c()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/push/NemesisNotificationsService;->a(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/nianticproject/ingress/common/a/c;->b()V

    .line 555
    :cond_1
    sget-object v0, Lcom/nianticproject/ingress/ce;->a:Lcom/nianticproject/ingress/ce;

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->t:Lcom/nianticproject/ingress/ce;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 557
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 558
    return-void

    .line 553
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :pswitch_2
    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    :try_start_4
    const-string/jumbo v1, "NemesisActivity.onGamePause"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/NemesisActivity;->d:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/NemesisApplication;->l()Lcom/nianticproject/ingress/connectivity/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nianticproject/ingress/connectivity/a;->b(Lcom/nianticproject/ingress/connectivity/b;)V

    invoke-direct {p0}, Lcom/nianticproject/ingress/NemesisActivity;->g()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Lcom/nianticproject/ingress/bn;

    invoke-direct {v2, p0, v0}, Lcom/nianticproject/ingress/bn;-><init>(Lcom/nianticproject/ingress/NemesisActivity;Z)V

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    invoke-static {p0}, La;->ao(Lcom/nianticproject/ingress/NemesisActivity;)V

    .line 425
    :try_start_0
    const-string/jumbo v0, "NemesisActivity.onResume"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 426
    const-string/jumbo v0, "NemesisActivity"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;)V

    .line 428
    sget-object v0, Lcom/nianticproject/ingress/NemesisActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "onResume: lifecycle=%s hasWindowFocus=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/NemesisActivity;->t:Lcom/nianticproject/ingress/ce;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisActivity;->hasWindowFocus()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onResume()V

    .line 431
    invoke-virtual {p0}, Lcom/nianticproject/ingress/NemesisActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/nianticproject/ingress/NemesisActivity;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 439
    return-void

    .line 434
    :cond_0
    :try_start_1
    sget-object v0, Lcom/nianticproject/ingress/ce;->b:Lcom/nianticproject/ingress/ce;

    iput-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->t:Lcom/nianticproject/ingress/ce;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter

    .prologue
    .line 513
    :try_start_0
    const-string/jumbo v0, "NemesisActivity.onWindowFocusChanged"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 514
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onWindowFocusChanged(Z)V

    .line 515
    sget-object v0, Lcom/nianticproject/ingress/NemesisActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "onWindowFocusChanged: lifecycle=%s hasFocus=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/NemesisActivity;->t:Lcom/nianticproject/ingress/ce;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/NemesisActivity;->t:Lcom/nianticproject/ingress/ce;

    sget-object v1, Lcom/nianticproject/ingress/ce;->b:Lcom/nianticproject/ingress/ce;

    if-ne v0, v1, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/nianticproject/ingress/NemesisActivity;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 522
    return-void

    .line 521
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public setContentView(I)V
    .locals 2
    .parameter

    .prologue
    .line 417
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->setContentView(I)V

    .line 418
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string/jumbo v1, "coda.ttf"

    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/ui/aj;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 420
    return-void
.end method
