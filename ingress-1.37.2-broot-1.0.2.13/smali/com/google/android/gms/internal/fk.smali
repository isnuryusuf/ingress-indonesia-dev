.class public final Lcom/google/android/gms/internal/fk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/content/Intent;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fk;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/fk;->b:Landroid/content/Intent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/fk;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fk;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fk;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/fk;->b:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/internal/fk;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "SettingsRedirect"

    const-string/jumbo v1, "Can\'t redirect to app settings for Google Play services"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
