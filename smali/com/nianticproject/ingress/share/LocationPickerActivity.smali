.class public Lcom/nianticproject/ingress/share/LocationPickerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private final c:Lcom/nianticproject/ingress/share/c;

.field private d:Lcom/google/a/d/u;

.field private e:Z

.field private f:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 73
    new-instance v0, Lcom/nianticproject/ingress/share/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/share/c;-><init>(Lcom/nianticproject/ingress/share/LocationPickerActivity;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->c:Lcom/nianticproject/ingress/share/c;

    .line 204
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/a/d/u;Z)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticproject/ingress/share/LocationPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const-string/jumbo v1, "initial_lat_lng"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 58
    const-string/jumbo v1, "new_portal"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/a/d/u;
    .locals 1
    .parameter

    .prologue
    .line 67
    const-string/jumbo v0, "result_lat_lng"

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->a(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/a/d/u;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/a/d/u;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/u;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/share/LocationPickerActivity;Lcom/google/a/d/u;)Lcom/google/a/d/u;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->d:Lcom/google/a/d/u;

    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->setResult(I)V

    .line 178
    invoke-virtual {p0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->finish()V

    .line 179
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/share/LocationPickerActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->c:Lcom/nianticproject/ingress/share/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/share/c;->a()Lcom/google/a/d/u;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "result_lat_lng"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->finish()V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->d:Lcom/google/a/d/u;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/share/LocationPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->a()V

    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/share/LocationPickerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->a(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f080042

    const v3, 0x7f08001b

    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->setContentView(I)V

    .line 84
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "coda.ttf"

    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/ui/aj;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 86
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->a:Landroid/view/View;

    .line 87
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->b:Landroid/view/View;

    .line 89
    invoke-virtual {p0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "new_portal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->e:Z

    .line 90
    if-eqz p1, :cond_0

    .line 91
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/u;

    iput-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->d:Lcom/google/a/d/u;

    .line 92
    const-string/jumbo v0, "new_portal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->e:Z

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->e:Z

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    invoke-virtual {p0, v4}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->d:Lcom/google/a/d/u;

    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "initial_lat_lng"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->a(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/a/d/u;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->d:Lcom/google/a/d/u;

    .line 110
    :cond_1
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/nianticproject/ingress/share/a;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/share/a;-><init>(Lcom/nianticproject/ingress/share/LocationPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/nianticproject/ingress/share/b;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/share/b;-><init>(Lcom/nianticproject/ingress/share/LocationPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void

    .line 99
    :cond_2
    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    invoke-virtual {p0, v4}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 117
    invoke-static {p0}, Lcom/google/android/gms/common/f;->a(Landroid/content/Context;)I

    move-result v0

    .line 119
    packed-switch v0, :pswitch_data_0

    .line 135
    invoke-direct {p0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->a()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v8, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->c:Lcom/nianticproject/ingress/share/c;

    iget-object v0, v8, Lcom/nianticproject/ingress/share/c;->a:Lcom/google/android/gms/maps/c;

    if-nez v0, :cond_2

    iget-object v0, v8, Lcom/nianticproject/ingress/share/c;->b:Lcom/nianticproject/ingress/share/LocationPickerActivity;

    invoke-direct {v0, v7}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->a(Z)V

    iget-object v0, v8, Lcom/nianticproject/ingress/share/c;->b:Lcom/nianticproject/ingress/share/LocationPickerActivity;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/j;

    move-result-object v0

    const v2, 0x7f080044

    invoke-virtual {v0, v2}, Landroid/support/v4/app/j;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment;->b()Lcom/google/android/gms/maps/c;

    move-result-object v0

    iput-object v0, v8, Lcom/nianticproject/ingress/share/c;->a:Lcom/google/android/gms/maps/c;

    iget-object v0, v8, Lcom/nianticproject/ingress/share/c;->a:Lcom/google/android/gms/maps/c;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->a()V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, v8, Lcom/nianticproject/ingress/share/c;->b:Lcom/nianticproject/ingress/share/LocationPickerActivity;

    iget-object v0, v0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->d:Lcom/google/a/d/u;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, v8, Lcom/nianticproject/ingress/share/c;->b:Lcom/nianticproject/ingress/share/LocationPickerActivity;

    iget-object v1, v1, Lcom/nianticproject/ingress/share/LocationPickerActivity;->d:Lcom/google/a/d/u;

    invoke-virtual {v1}, Lcom/google/a/d/u;->c()D

    move-result-wide v1

    iget-object v3, v8, Lcom/nianticproject/ingress/share/c;->b:Lcom/nianticproject/ingress/share/LocationPickerActivity;

    iget-object v3, v3, Lcom/nianticproject/ingress/share/LocationPickerActivity;->d:Lcom/google/a/d/u;

    invoke-virtual {v3}, Lcom/google/a/d/u;->f()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->c()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/maps/model/b;->a()Lcom/google/android/gms/maps/model/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, v8, Lcom/nianticproject/ingress/share/c;->b:Lcom/nianticproject/ingress/share/LocationPickerActivity;

    const v3, 0x7f09009f

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, v8, Lcom/nianticproject/ingress/share/c;->a:Lcom/google/android/gms/maps/c;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/i;

    iget-object v1, v8, Lcom/nianticproject/ingress/share/c;->a:Lcom/google/android/gms/maps/c;

    invoke-static {v0}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    :goto_2
    iget-object v0, v8, Lcom/nianticproject/ingress/share/c;->a:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->c()V

    iget-object v0, v8, Lcom/nianticproject/ingress/share/c;->a:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->d()V

    :cond_2
    move v0, v7

    goto :goto_1

    :cond_3
    iget-object v0, v8, Lcom/nianticproject/ingress/share/c;->b:Lcom/nianticproject/ingress/share/LocationPickerActivity;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string/jumbo v1, "passive"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/nianticproject/ingress/share/d;

    invoke-direct {v5, v8, v0}, Lcom/nianticproject/ingress/share/d;-><init>(Lcom/nianticproject/ingress/share/c;Landroid/location/LocationManager;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_2

    .line 128
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/share/LocationPickerActivity;->a(Z)V

    .line 129
    invoke-static {v0, p0}, Lcom/google/android/gms/common/f;->a(ILandroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 156
    const-string/jumbo v1, "location"

    iget-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->d:Lcom/google/a/d/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/share/LocationPickerActivity;->c:Lcom/nianticproject/ingress/share/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/share/c;->a()Lcom/google/a/d/u;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 157
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
